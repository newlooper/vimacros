"*****************************************************************
"* Arithmetic for VIM                                            *
"*  - by Nick Harvey                                             *
"*                                                               *
"* Created in celebration of the release of VIM 5.0              *
"* Thanks Bram and Crew!                                         *
"*                                                               *
"* Instructions: First you must change the 'arithLoc' variable   *
"* to the appropriate directory below. Then source this file,    *
"* and the game begins! Go into insert mode, type the answer     *
"* to the problem, then hit enter to go on to the next question. *
"* To end the game, hit escape to get out of insert mode, then   *
"* :q! the buffer.                                               *
"*                                                               *
"* Bugs: The 'random' number generator sucks.                    *
"* Subtraction, multiplication, etc. are not implemented.        *
"* Your speed is not reported.                                   *
"*                                                               *
"* mailto: njaharve@uwaterloo.ca                                 *
"* URL: http://www.undergrad.math.uwaterloo.ca/~njaharve/        *
"*****************************************************************


" ***NOTE*** Set this to the directory which contains the
" 'arith.vim' and 'arith2.vim' files (including trailing slash)
let arithLoc="./"



let gdfsave=&gdefault
set nogdefault

" Get a name for our temporary buffer
let arithWinName=tempname()

" Set autocommands for entering/leaving the game
let enterMap = 'imap <CR> mayypI==A4:s/\s*//g$?[^0-9\-] d0$x0"ay$dd`a:execute "so " arithLoc."arith2.vim"@a|'
let enterMap2 = 'nmap _gq :let arithS = strftime("%S"):let arithM = strftime("%M"):let arithR1 = (arithR2+((arithS*arithS*arithS)%17*(arithM+7)*13)+3)%10:let @a = arithR1o"aPa + :let arithS = strftime("%S"):let arithM = strftime("%M"):let arithR2 = (arithR1+((arithS*arithS)%53*(arithM+2)*19)+7)%10:let @a = arithR2:let arithA=arithR1+arithR2:let arithI=1"apa = '
let enterMap = enterMap.enterMap2
let enterUnmap = "iunmap |nunmap _gq"
let stats = 'echo "Rights " arithC "; Wrongs " arithW|if gdfsave|set gdefault|else|set nogdefault|endif|'
execute "autocmd BufEnter " arithWinName " " enterMap
execute "autocmd BufLeave " arithWinName " " enterUnmap
execute "autocmd BufUnload " arithWinName stats " autocmd! * " arithWinName 

" Start up the buffer
execute "new " arithWinName
normal! oArithmetic for VIM------------------kyykPG

" Set the initial state of the game
let arithW=0
let arithI=1
let arithC=0
let arithA=0
let arithR1=0
let arithR2=0

let arithS = strftime("%S")
let arithM = strftime("%M")
let arithR1 = (arithR2+((arithS*arithS)%17*(arithM+7)*13))%10
let @a = arithR1
normal! o"aPa + 
let arithS = strftime("%S")
let arithM = strftime("%M")
let arithR2 = (arithR1+((arithS*arithS)%53*(arithM+2)*19))%10
let @a = arithR2
let arithA=arithR1+arithR2
normal! "apa = 

