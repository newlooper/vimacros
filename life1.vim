" Macros to play Conway's Game of Life in vi
" Version 1.0: edges wrap
" by Eli-the-Bearded (eli@netusa.net), Sept 1996
" This file may be free distributed so long as these credits remain
" unchanged.
"
" Rules:
"   If a germ has 0 or 1 live neighbors it dies of loneliness
"   If a germ has 2 or 3 live neighbors it survives
"   If a germ has 4 to 8 live neighbors it dies of starvation
"   If a empty box has 3 live neighbors a new germ is born
"
" Notice the rules do not mention edges. This version has the
" edges wrap around. I have an earlier version that offers the
" option of live edges or dead edges. Email me if you are
" interested.
"
" To use these macros:
"
"   Source this file (:so life1.mac)
"
"   Hit 'I' to initialize everything. A board will be drawn for
"   at the end of the current buffer. All line references in
"   these macros are relative to the end of the file and playing
"   the game can be done safely with this file as the current
"   buffer.
"
"   Fill in the empty space with X's to suit your tastes.
"
"   Use 'g' to run one generation, use '+' to time running
"   one generation. Or make a number the only thing on the
"   current line and use 'z' to time that many generations.
"
" Time to run one generation on a Sun 4c (rounded to nearest 10 seconds).
"	vi (Solaris 2.5): 11 min 30 sec
"	vim 4.2 (gcc -g):  2 min 30 sec
"
"
" And now the macros.
"
" Delete excess 's'paces
map ,s G:.s/ //g
"
"
" Count the number of X's on the line, generate an edit command,
" and then run the edit command. (used by work out square)
"
" It is an error for a substitute command to fail, so global is
" used to test if it should be done.
map ,8 :g/^[ld]XXXXXXXX/s//`a22lr /
map ,7 :g/^[ld]XXXXXXX/s//`a22lr /
map ,6 :g/^[ld]XXXXXX/s//`a22lr /
map ,5 :g/^[ld]XXXXX/s//`a22lr /
map ,4 :g/^[ld]XXXX/s//`a22lr /
map ,3 :g/^[ld]XXX/s//`a22lrX/
map ,2a :g/^lXX/s//`a22lrX/
map ,2b :g/^dXX/s//`a22lr /
map ,1 :g/^[ld]X/s//`a22lr /
map ,0 :g/^[ld]/s//`a22lr /
"
map ( ,s,8,7,6,5,4,3,2a,2b,1,00"qd$@q21h
"
"
" 'M'ove a character to the end of the file (used by all work out square
" macros)
"
" This gets run 1600 per generation so it should be *fast*.
"	vim using  G, 5 gens: 16 minutes  7 seconds
"	vim using `z, 5 gens: 16 minutes 28 seconds
" (I did the mz right after the G in the T macro for the test)
"
map M y G$p`a
"
"
" Store live/dead state
map K :g/^s /s// d/:g/^sX/s// l/`a
"
"
" 'W'ork out a center square (used by work out line)
map W maGccs`aMKkMjMhMlMjlMjhMklMkhM(
"
"
" Work out a 'L'eft square (used by work out center line)
map L maGccs`aMKkMjMf-hMlMjlMjf-hMklMkf-hM(
"
"
" Work out a 'R'ight square (used by work out center line)
map ,r maGccs`aMKkMjMhMF-lMjF-lMjhMkF-lMkhM(
"
"
" Work out a center line (used by show next, work out top and bottom lines)
map > 0 LWWWWWWWWWWWWWWWWWW,rj
"
"
" Work around vi multiple yank/put in a single macro limitation
" (used by work out top line)
map ,! "byy
map ,@ "cyy
map ,# "bP
"
" Work around vi multiple yank/put in a single macro limitation
" (used by work out top and bottom line)
map ,$ dd
"
"
" Work out 'T'op line (used by show next)
map T G2k,!9k,@,#j>2k,$j
"
"
" Work around vi multiple yank/put in a single macro limitation
" (used by work out bottom line)
map ,% "cp
"
"
" Work out 'B'ottom line (used by show next)
map B ,%k>,$
"
"
" Refresh board (used by show next)
map & :%s/^\(-[ X]*-\)\(-[ X]*-\)\(-[.]*-\)$/\2\3\3/
"
"
" Write a new line (used by create board)
map ) o-                    --....................--....................-
"
"
" 'I'nitialize the board (used by the human)
map I G))))))))))))oPut 'X's in the blank box, then hit 'g'k:s/./-/g11k:sg
"
"
" Show next 'g'eneration (used by the human)
map g T>>>>>>>>B&
"
"
" Get current date (used by time a generation)
map < :r!date
"
"
" Time running one generation (used by the human)
map + G12kO<gG13k<
"
"
" Turn number on current line into edit command (used by time N generations)
map ,^ Aig
"
"
" Delete current line and save current line (used by time N generations)
map ,& 0"gd$
"
"
" Run saved line (used by time N generations)
map ,* @g
"
"
" Time running N generations, where N is the number on the current line.
" (used by the human)
map z ,^,&,*,&G12kO<,*G13k<
"
"
" End of the macros.
