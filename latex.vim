"   ,cps = create ps file (from dvi file of current file)
map ,cps :!dvips %<.dvi -o<CR>:!ghostview %<.ps<CR><CR>
imap ^e {\em}i
imap ^b {\bf}i
imap ^t {\tt}i
imap ^v \verb++i
map! ]i \item 
map! ]bi \begin{itemize}\item 
map! ]ei \end{itemize}
map! ]be \begin{enumerate}\item 
map! ]ee \end{enumerate}
map! ]bd \begin{description}\item[
map! ]ed \end{description}
map! ]bc \begin{center}
map! ]ec \end{center}
map! [be{\samepage\begin{eqnarray}
map! [ee\end{eqnarray}}
map! ]s1 \section{
map! ]s2 \subsection{
map! ]s3 \subsubsection{
map! ]p1 \paragraph{
map! ]p2 \subparagraph{
map! ]f \frac{
map! ]o \overline{
map! ]u \underline{
map! ;em bi{\em lea}i 
ab latex \documentstyle[a4]{article}\begin{document}\input{title}\end{document}kki 
 
" ================= Block Macros =========================
" =. macro - creates line of "."s of length = column position
map =. mx:t.`xjaxD:s/././g
"
" =* macro - used by block macros: creates line divider: \(...\)\(...\)
map =* `a=.xI:s/^A/\\(&\\)\\(/"xdd`b=.@xA\)
"
" *d macro - delete block from `a (top left) to `b (bot right)
map *d =*I:'a,'bs/A\(.*\)/\1\3/"xdd@x
"
" *D macro - delete from column `a to end of line, over lines 'a,'b
map *D `a=.xI:'a,'bs/\(A\).*/\1/"xdd@x
"
" *y macro - yank `a,`b block onto new lines ('z to 'a-1)
map *y =*I:'a,'bg/^/t'a-1|'a-1s/A.*/\2/"xdd'aOmz@x'zddmz
"
" *t (*T) macro - copy `a,`b block to after (before) cursor
map *t my*y`y=.=t
map *T my*y`y=.x=t
" this should work, but may give "Can't undo in global" message (vi bug?)
map =t I:'z,'a-g/[\\&~?]/s//\\&/g:'z,'a-s/\(.*\)/s?\\(A\\)?\\1\1?/"ydd@y:'z,'a-g/^/d x|'y@x|'y+ma y
" this works, but is slower and ends with messy "Undefined mark" message
" (these are in ~/.viblock2, so if above fails do ":so ~/.viblock2" and redo)
"map =t I:'z,'a-g/[\\&~?]/s//\\&/g:'z,'a-s/\(.*\)/s?\\(A\\)?\\1\1?/"ydd@y'akmx*@
"map *@ :'xma x|'zd x|ma z|'y@xjmy*@

"run dvips on document
map =d :!dvips `basename % .tex` ^M:e^M^M
"
" run previewer on dvi version of document
map =pr :!prv `basename % .tex`.dvi ^M^M
"
" run previewer on postscript version of document
map =gv :!gv `basename % .tex`.ps & ^M^M
"
" print .ps version of file
map =ps :!pps `basename % .tex`.ps^M^M
