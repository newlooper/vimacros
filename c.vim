" ========================================================================
" Programming in C
" ========================================================================
"
"  Ysbl   insert statement block
ab Ysbl   {<ESC>o}<ESC>O 
"
"  Ydef   insert "#define" at start of line
ab Ydef   <ESC>0i#define
"
"  Yinc   insert "#include" at start of line
ab Yinc   <ESC>0i#include
"
"  Yelse  insert else clause of if statement with following if statement
ab Yelif  else if () {<ESC>o}<ESC>k$2hi
"
"  Yelse  insert else clause of if statement
ab Yelse  else {<ESC>o}<ESC>O   
"
"  Yfor   insert "for" statement
ab Yfor   for (;;) {<ESC>o}<ESC>kwa
"
"  Yif    insert "if" statement
ab Yif    if () {<ESC>o}<ESC>k$2hi
"
"  Ywhile insert "while" statement
ab Ywhile while () do {<ESC>o}<ESC>k$5hi
"
"  Ymain  insert "main" routine
ab Ymain  main (argc,argv) <ESC>oint argc;<ESC>ochar *argv;<ESC>o{<ESC>o}<ESC>O
"
"   <C-A> insert brackets for statement list
map <C-A> o{<ESC>o}<ESC>O                
"

" Insert mode:  Typing an opening curly bracket will insert a pair of
"  curly brackets and move the cursor before the closing curly bracket:
:inoremap { {}<ESC>i

" Insert mode:  Typing a closing curly bracket will jump after the next closing
" curly bracket (this assumes that curly brackets are always inserted as a pair.)
:inoremap  } <ESC>/}/e+1<C-M>i
