"
"  this is an initialisation file for vi.  put it in you home
"  directory and call it '.exrc' 
"
"                          HTML - Editor
"
"   ab .... Abbreviations.   (to be used in insert mode)
"
"   if   xy  produces <XY>,
"       nxy  produces </XY>
"
ab pg <HTML><HEAD><TITLE>#</TITLE></HEAD><BODY></BODY></HTML>
ab br <BR>
ab hr <HR>
ab pp <P>
ab ht <HTML>
ab nht </HTML>
ab hd <HEAD>
ab nhd </HEAD>
ab ti <TITLE>
ab nti </TITLE>
ab bd <BODY>
ab nbd </BODY>
ab em <EM>
ab nem </EM>
ab str <STRONG>
ab nstr </STRONG>
ab pre <PRE>
ab npre </PRE>
ab ul <UL>
ab nul </UL>
ab ol <OL>
ab nol </OL>
ab li <LI>
ab dl <DL>
ab ndl </DL>
ab dt <DT>
ab dd <DD>
ab adr <ADDRESS>
ab nadr </ADDRESS>
ab h1 <H1>
ab nh1 </H1>
ab h2 <H2>
ab nh2 </H2>
ab h3 <H3>
ab nh3 </H3>
ab h4 <H4>
ab nh4 </H4>
ab h5 <H5>
ab nh5 </H5>
ab h6 <H6>
ab nh6 </H6>
ab ig <IMG SRC="#">
ab fr <FORM ACTION="#" METHOD="#">
ab nfr </FORM>
"
"   map .... Macros.   (to be used in command mode)
"
"  ctrl-x ctrl-l : the line under the cursur ends up as the text for
"                  a hyperlink, the cursor is places on the HREF, to let
"                  you insert the URL.
"
map  o</A>kO">I<A HREF="
"
"  ctrl-x ctrl-w : the word under the cursur ends up as the text for
"                  a hyperlink, the cursor is places on the HREF, to let
"                  you insert the URL. (this only works with the cursor
"                  at the *end* of the word)
"
map  a</A>bbbi<A HREF="#">F#s
"
"  ctrl-x number : the line under the cursur is turned into a Heading
"                  ctrl-x 1  --->   H1  biggest Heading
"                  ctrl-x 2  --->   H2  next smaller Heading
"
map 1 I<H1>A</H1>j
map 2 I<H2>A</H2>j
map 3 I<H3>A</H3>j
map 4 I<H4>A</H4>j
map 5 I<H5>A</H5>j
map 6 I<H6>A</H6>j
"
"
