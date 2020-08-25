" vi-mail
"
" Macros for an offline mailer in vim
"
" Dave Brown 1997
"
" Usage:
" Change the address and name variables as shown below.  Then do
" this: 
"   rm outgoing
"   cp $MAIL mailbox
"   vim mailbox
"   :so vi-mail
"
" Then use vi-mail as below.  When you're done, there's a nice
" new file called 'outgoing', which is just a shell script:
"
"   sh outgoing
"
" Mailer commands
"
" ^E Reply to current message
" ^D Delete current message
" ^S Send reply (or new mail) being edited 
" g  Reformat quoted text
" ^N Start editing new message
" ^H Show headers a la the "from" command
" ------------------------------------------------------------------------
" user-configurable abbr "variables" used by the vi mailer
" ------------------------------------------------------------------------
abbr VIMAILADDR dagbrown@csclub.uwaterloo.ca
abbr VIMAILNAME Dave Brown
" ------------------------------------------------------------------------
" Internal macros used by the user-interface end macros
" ------------------------------------------------------------------------
" get various information from headers
map #getinfo 1G/^From: 
" rewrite headers for outgoing mail
map #newheaders 1Gd}1GOFrom: VIMAILADDR (VIMAILNAME)
" figure out what the email address is, to feed to sendmail
map #getemailaddress 1G/^To: 
" add the sendmail line and here-file ending for shell-script of
" email (on a unix system, this could be accomplished by making it
" a shell escape on the current buffer instead of writing to a
" shell script, but I don't have access to sendmail offline so I
" just write a shell script
map #addsendmailline 1GOsendmail $"apA << '-=-EOF-=-'Go-=-EOF-=-
" ------------------------------------------------------------------------
" Actual user commands for the vi-mailer:
" ------------------------------------------------------------------------
" send current message being edited (by way of appending it to the
" "outgoing" shell script, go back to mailbox
map  #getemailaddress#addsendmailline:w! >> outgoing
" Reply to current message (quote original--that can always be
" deleted)
map  ?^From 
" delete current message
map  ?^From 
" reformat quoted text
map g {:,./^$/s/^: //
" Start editing new message (gets your From: line from the abbr'ed
" "variable"s VIMAILADDR and VIMAILNAME)
map  :e! tmp.file
" Show from lines (a la 'from' command)
map  :g/^From /p