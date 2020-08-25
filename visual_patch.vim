" ----- put these lines in your 'vimrc' or ':source' them ------- [Vim5.3] ---
" Function: Perform an Ex command on a visual highlighted block (CTRL-V).
" Usage:    Mark visual block (CTRL-V), press ':B ' and enter an Ex command
"           [cmd]. On the command-line the visual range is automatically
"           inserted, ie. ":'<,'>B [cmd]" is displayed there (as usual).
"           Command-line completion is supported for Ex commands.
" Notes:    There must be a space before the '!' when invoking external shell
"           commands, eg. ':B !sort'. Otherwise an error is reported.
"           In regular expressions, the atom '^' specifies the first column
"           of the marked block. In the same way all other positions count
"           for the marked area.
" Author:   Stefan Roemer <roemer@in.tum.de>
"           commands, eg. ':B !sort'. Otherwise an error is reported.
"
fu! VisBlockCmd(flag,cmd)
  let x1=col("'<")|let y1=line("'<")
  let x2=col("'>")|let y2=line("'>")
  '>pu_|km|let a=''|let b=''|let l=y1
  while l<=y2
    let ln=getline(l)|let p1=strpart(ln,0,x1-1)|let p2=strpart(ln,x2,999999999)
    let a=a.p1."\n"|let b=b.p2."\n"|call setline(l,strpart(ln,x1-1,x2-x1+1))
    let l=l+1
  endw
  exe"'<,'>".a:cmd
  let l=y2-line("'m")|while l>=0|'m-1pu_|let l=l-1|endw|let l=y1
  while l<=y2
    call setline(l,matchstr(a,"[^\<c-j>]*").getline(l).matchstr(b,"[^\<c-j>]*"))
    let a=substitute(a,".\\{-}\<c-j>",'','')
    let b=substitute(b,".\\{-}\<c-j>",'','')
    let l=l+1
  endw
  if a:flag==1|exe"'md"|else|exe y2+1.",'md"
  endif
endf
" ------------------------------------------------------------------------------
" if more lines than the size of the marked block are inserted, cut them off
com! -ra -n=+ -com=c B call VisBlockCmd(0,'<a>')
" keep all lines even if there are additional lines inserted after the block
com! -ra -n=+ -com=c C call VisBlockCmd(1,'<a>')
" ------------------------------------------------------------------------------

