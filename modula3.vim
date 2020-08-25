" vim syntax file
" Language: Modula-3
" Author: Matt Corks <mvcorks@uwaterloo.ca>
" Last change: June 1997

" Remove any old syntax stuff hanging around
syntax clear
syntax case match

syntax keyword modula3Statement   GENERIC MODULE INTERFACE BEGIN END
syntax keyword modula3Label   CASE GOTO
syntax keyword modula3Conditional IF ELSE ELSEIF ELSIF THEN
syntax keyword modula3Repeat    DO FOR WHILE TO UNTIL
syntax keyword modula3Exceptions  TRY EXCEPT EXCEPTION

syntax keyword modula3Assertions  start=+<\*+ end=+\*>+

syntax keyword modula3Todo contained  TODO

" String 
syntax region  modula3String  start=+"+  end=+"+

syntax match  modula3Identifier   "\<[a-zA-Z_][a-zA-Z0-9_]*\>"

"syntax match  modula3MatrixDelimiter "[][]"
"if you prefer you can highlight the range
syntax match  modula3MatrixDelimiter  "[[0-9]\+\.\.[0-9]\+]"

syntax match  modula3Number   "-\=\<[0-9]\+\.[0-9]\+[dD]-\=[0-9]\+\>"
syntax match  modula3Number   "-\=\<[0-9]\+\.[0-9]\+[eE]-\=[0-9]\+\>"
syntax match  modula3Number   "-\=\<[0-9]\+\.[0-9]\+\>"
syntax match  modula3Number   "-\=\<[0-9]\+\>"
syntax match  modula3Byte   "\$[0-9a-fA-F]\+\>"

" If you don't like tabs
"syntax match modula3ShowTab "\t"
"syntax match modula3ShowTabc "\t"

syntax region modula3Comment  start="(\*"  end="\*)" contains=modula3Todo
syntax match  modula3CommentError "\*)"

syntax keyword modula3Operator ABS ADDRESS ADR ADRSIZE AND & ANY ARRAY AS
syntax keyword modula3Operator BITS BITSIZE BOOLEAN BRANDED BY BYTESIZE
syntax keyword modula3Operator CARDINAL CEILING CHAR CONST DEC DISPOSE
syntax keyword modula3Operator DIV EOF
syntax keyword modula3Operator EVAL EXIT EXPORTS EXTENDED FALSE
syntax keyword modula3Operator FINALLY FIRST FLASE FLOAT FLOOR FROM
syntax keyword modula3Operator IMPORT IN INC INTEGER ISTYPE
syntax keyword modula3Operator LAST LOCK LONGREAL LOOP LOOPHOLE MAX METHODS MIN
syntax keyword modula3Operator MOD MUTEX NARROW NEW NIL NOT
syntax keyword modula3Operator NUMBER OBJECT OF OR ORD OVERRIDES RAISE
syntax keyword modula3Operator RAISES READONLY REAL RECORD REF REFANY REPEAT
syntax keyword modula3Operator RETURN REVEAL REQUIRES ROOT ROUND SET
syntax keyword modula3Operator SUBARRAY TEXT THEN TRUE TRUNC TYPE
syntax keyword modula3Operator TYPECASE TYPECODE UNSAFE UNTRACED VAL
syntax keyword modula3Operator VALUE VAR WITH

syntax keyword modula3Type  CHAR CONST INTEGER REAL TEXT STRING

syntax keyword modula3Function  PROCEDURE FUNCTION

"syntax sync lines=250

if !exists("did_modula3_syntax_inits")
  let did_modula3_syntax_inits = 1
  " The default methods for highlighting.  Can be overridden later
  highlight link modula3Statement   Statement
  highlight link modula3Label     Label
  highlight link modula3Conditional Conditional
  highlight link modula3Repeat      Repeat
  highlight link modula3Todo        Todo
  highlight link modula3String      String
  highlight link modula3MatrixDelimiter   Identifier
  highlight link modula3Number      Number
  highlight link modula3Byte        Number
  highlight link modula3Operator    Operator
  highlight link modula3Function    Function
  highlight link modula3Type        Type
  highlight link modula3Assertions  Comment
  highlight link modula3Comment     Comment
  highlight link modula3Exceptions  Statement
  highlight link modula3Statement   Statement

"optional highlighting
  highlight link modula3Delimiter   Identifier

  highlight link modula3CommentError  Error
  highlight link modula3ShowTab     Error
  highlight link modula3ShowTabc    Error

  highlight link modula3Identifier  Identifier
endif
