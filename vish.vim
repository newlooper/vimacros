" VISH v0.2 by Matt Corks and Nick Harvey

" Notes:
" This file uses _ as a `metacharacter', you may need to switch this to
" something you don't normally use to avoid ambiguous mappings.
 
" Bugs:
" using ! means the command pwd is run twice, but only deleted once-
" I should be using :pwd somehow

cmap vish<C-M> <C-M>ma_setenter:new<C-M>_fix
cmap noshell<C-M> <C-M>:iunmap <C-V><C-M><C-M>:iunmap <C-V><UP><C-M>:iunmap <C-V><TAB><C-M>:iunmap <C-V><C-D><C-M>:" Thanks for flying vish!<C-M>
map _setenter :imap <C-V><C-M> <C-V><ESC>_enter<C-M>
map _fix :set noai nosi bs=1<C-M>:r!pwd<C-M>"pd$dd;go
map ;go Go<ESC>"pPyypI:cd <ESC>0"add@a_setenterA% <ESC>A

map _enter :iunmap <C-V><C-M><C-M>A <ESC>mayypA#<ESC>0f#Do:s#^<ESC>"ppA% ##<ESC>"add@ayypO_notexit<C-M>_exit<C-M>exit<ESC>'a;ife

map _exit  :q!<C-M>:noshell<C-M>
imap <C-D> <ESC>_exit
imap <TAB> <ESC>mao:r!echo <ESC>k$By$j$pA*\|fmt<ESC>"add@a'ayyGpA
imap <UP> foo<C-U>!

map _notexit jyypA foo<ESC>0yeo<ESC>PO_notnew<C-M>_new<C-M>new<ESC>'a;ife

map _notnew jj0lDO_notinter<C-M>_inter<C-M>:<ESC>'a;ife
map _new jjdd0dwI:new <ESC>"add@a

map _inter 'aj0xA <ESC>:s/[ <TAB>\|]/\\\\&/g<C-M>$xx
";go

map _notinter 'ajyypO_notclear<C-M>_clear<C-M>clear<ESC>'a;ife

map _clear jdd<C-L>;go<ESC>z<C-M>A
map _notclear 'ajo <ESC>k:.,$s/^[ <TAB>]*$/:/<C-M>'ajjdd'aji:r!<ESC>A;pwd<ESC>0"add'a@a0"pd$dd;go

map ;ife mzGkyyGpp0i:.,$s#^<ESC>A$#<ESC>4k0y$G$pA#<C-V><C-M><ESC>0"zd$ddkyyp@zGddkyyGp0i:.,$s#^<ESC>A$#<ESC>5k0y$G$pA#<C-V><C-M><ESC>0"zd$ddk@zGkdd3k3dd"zd$dd`z@z
