" Quote-text macro.  Use "mm" to mark the beginning of the block.
map >> :'m,.s/^/>/
"
" HTML Macros
"
"	I designed this set of HTML macros mainly for my personal use.
"	They're based on the markup tags in the back of _Web_Weaving_
"	by Tilton, et. al.  Actually, they're taken almost verbatim
"	from the back of _Web_Weaving_ by Tilton, et. al.  If you've
"	read the book, you'll recognize the organization--by letter,
"	then alphabetically within that letter.  They're also noted
"	if they're 3.0 or Netscape-specific, as well as if they're
"	header-specific...all per _Web_Weaving_.
"
"	I had to comment some of the macros out so that they would
"	all load.  I primarily commented out the 3.0 macros, because
"	they're not widely-supported yet.  Comment and uncomment to
"	your heart's content.
"
"	These macros may be freely copied and modified.  If you
"	find them useful, I'd appreciate hearing about it!
"
"	Peace - doug
"	drenze@avalon.net
"
" General Markup Tags
"
"	The Comment Tag
map! ;cm <!--  -->Bhi
"
"	A
"		A HREF (anchor hyperlink)
map! ;ah <A HREF=""></A>?"i
"
"		A NAME (named anchor)
map! ;an <A NAME=""></A>?"i
"
"		ABBREV (map!eviation) (3.0)
"map! ;ab <ABBREV></ABBREV>bhhi
"
"		ACRONYM (3.0)
"map! ;ac <ACRONYM></ACRONYM>bhhi
"
"		ADDRESS
map! ;ad <ADDRESS></ADDRESS>bhhi
"
"		AU (author) (3.0)
"map! ;au <AU></AU>bhhi
"	
"	B
"		B (bold)
map! ;bo <B></B>hhhi
"
"		BANNER (3.0)
"map! ;ba <BANNER></BANNER>bhhi
"
"		BASE (head)
map! ;bh <BASE HREF="">hi
"
"		BASEFONT (Netscape)
"map! ;bf <BASEFONT SIZE=>i
"
"		BIG (3.0)
"map! ;bi <BIG></BIG>bhhi
"
"		BLOCKQUOTE
map! ;bl <BLOCKQUOTE></BLOCKQUOTE>O
"
"		BODY
map! ;bd <BODY></BODY>O
"
"		BQ (blockquote) (3.0)
"map! ;bq <BQ></BQ>bhhi
"
"		BR (line break)
map! ;br <BR>
"
"	C
"		CAPTION (3.0)
"map! ;ca <CAPTION></CAPTION>bhhi
"
"		CENTER (Netscape)
map! ;ce <CENTER></CENTER>bhhi
"
"		CITE
map! ;ci <CITE></CITE>bhhi
"
"		CODE
map! ;co <CODE></CODE>bhhi
"
"		CREDIT (3.0)
"map! ;cr <CREDIT></CREDIT>bhhi
"
"	D
"		DD (definition for definition list)
"
map! ;dd <DD></DD>bhhi
"
"		DEL (deleted text) (3.0)
"map! ;de <DEL></DEL>bhhi
"
"		DFN (defining instance) (3.0)
"map! ;df <DFN></DFN>bhhi
"
"		DIR (directory list) (3.0)
"map! ;di <DIR></DIR>O	
"
"		DIV (document division) (3.0)
"map! ;dv <DIV></DIV>bhhi
"
"		DL (definition list)
map! ;dl <DL></DL>O	
"
"		DT (term for definition list)
map! ;dt <DT></DT>bhhi
"	
"	E
"		EM (emphasize)
map! ;em <EM></EM>bhhi
"	
"	F
"		FIG (figure) (3.0)
"map! ;fi <FIG SRC=""></FIG>?"i
"
"		FN (footnote) (3.0)
"map! ;fn <FN></FN>bhhi
"
"		FONT (Netscape)
"map! ;fo <FONT SIZE=></FONT>bhhhi
"	
"	H
"		H1...H6 (headers, level 1-6)
map! ;h1 <H1></H1>bhhi
map! ;h2 <H2></H2>bhhi
map! ;h3 <H3></H3>bhhi
map! ;h4 <H4></H4>bhhi
map! ;h5 <H5></H5>bhhi
map! ;h6 <H6></H6>bhhi
"
"		HEAD
map! ;he <HEAD></HEAD>O
"
"		HR (horizontal rule)
map! ;hr <HR WIDTH="75%">
"
"		HTML (3.0)
map! ;ht <HTML></HTML>O
"	
"	I
"		I (italic)
map! ;it <I></I>hhhi
"
"		IMG (image tag)
map! ;im <IMG SRC="" ALT="">:?""??a
"
"		INS (inserted text) (3.0)
"map! ;in <INS></INS>bhhi
"
"		ISINDEX
map! ;ii <ISINDEX>
"
"	K
"		KBD (keyboard)
map! ;kb <KBD></KBD>bhhi
"
"	L
"		LANG (language context) (3.0)
"map! ;la <LANG LANG=""></LANG>?"i
"
"		LI (list item)
map! ;li <LI>
"
"		LINK (head)
map! ;lk <LINK HREF="">hi
"
"		LH (list header)
map! ;lh <LH></LH>bhhi
"
"	M
"		MENU
map! ;mu <MENU></MENU>O	
"
"		META (head)
map! ;me <META NAME="" CONTENT="">?""??a
"
"	N
"		NOBR (no break) (Netscape)
"map! ;nb <NOBR></NOBR>bhhi
"		NOTE (3.0)
"map! ;no <NOTE></NOTE>bhhi
"
"	O
"		OL (ordered list) (3.0)
map! ;ol <OL></OL>O	
"
"		OVERLAY (figure overlay image) (3.0)
"map! ;ov <OVERLAY SRC="">hi
"
"	P
"		P (paragraph)
map! ;pp <P><CR><CR>
"
"		PRE (preformatted)
map! ;pr <PRE></PRE>O
"
"	Q
"		Q (quote) (3.0)
"map! ;qu <Q></Q>hhhi
"
"	R
"		RANGE (3.0) (head)
"map! ;ra <RANGE FROM="" UNTIL="">Bhi
"
"	S
"		S (strikethrough) (3.0)
"map! ;sk <S></S>hhhi
"		SAMP (sample)
map! ;sa <SAMP></SAMP>bhhi
"		SMALL (3.0)
map! ;sm <SMALL></SMALL>bhhi
"		SPOT (3.0)
"map! ;sp <SPOT ID="">i
"
"		STRONG
map! ;st <STRONG></STRONG>bhhi
"		STYLE (3.0)
"map! ;sn <STYLE NOTATION=""></STYLE>k/"a
"		SUB (subscript) (3.0)
map! ;sb <SUB></SUB>bhhi
"		SUP (superscript) (3.0)
map! ;sp <SUP></SUP>bhhi
"
"	T
"		TAB (3.0)
"map! ;ta <TAB>
"		TITLE (head)
map! ;tb <TABLE></TABLE>bhhi
"		TD (table data)
map! ;td <TD></TD>bhhi
"		TITLE (head)
map! ;ti <TITLE></TITLE>bhhi
"		TR (table row)
map! ;tr <TR></TR>bhhi
"		TH (table heading)
map! ;th <TH></TH>bhhi
"		TT (teletype)
map! ;tt <TT></TT>bhhi
"
"	U
"		U (underline)
"map! ;uu <U></U>hhhi
"		UL (unordered list)
map! ;ul <UL></UL>O	
"
"	V
"		V (variable) (3.0)
"map! ;vv <V></V>hhhi
"
"	W
"		WBR (word break) (Netscape)
"map! ;wb <WBR>
"	 	Special Characters
map! ;& &amp;
map! ;cp &copy;
map! ;" &quot;
map! ;< &lt;
map! ;> &gt;
"	
"	 Command-mode tags
"	
"		Template creation macro
"			This macro will invoke a chain of macros which
"			will create the framework of an HTML document
"			for you.
map ;html :set aii<!DOCTYPE HTML PUBLIC  "-//W3C//DTD HTML 3.2//EN"><HTML><HEAD><TITLE></TITLE>;;T1
map ;doc 0i<!DOCTYPE HTML PUBLIC  "-//W3C//DTD HTML 3.2//EN">
"	 Never manually invoke these macros.  These are meant to be
"	 automagically invoked by the template-creation macro.  If you
"	 just use your own HTML template or something along those lines,
"	 you can simply delete from here to the end of the file.  Just
"	 don't try to invoke the template-creation macro after that. :-)
"	
map ;;T1 o</HEAD>;;T2
map ;;T2 o<BODY>;;T3
map ;;T3 o<H1></H1><P>;;T4
map ;;T4 o</BODY>;;T5
map ;;T5 o<!-- $Id$ --></HTML>;;T6
map ;;T6 1Gjjjlllllla
"
" HTML Macros for VIM's visual mode
"      These were also written for my personal use and to complement
"      the macros made by Doug Renze (drenze@avalon.net) that can be
"      found at: http://www.avalon.net/~drenze/
"      Remarks, suggestions and ideas are welcome
"
"      Ives Aerts
"      ives@sonytel.be
"
" 1) paragraph style macros
"      To use these macros, use the `V' command to select a number of lines
"      and then call the appropriate macro to change the style of those lines.
"
"	ADDRESS				HTML 2.0
vmap ;ad xi<ADDRESS></ADDRESS>P
"
"	BLOCKQUOTE			HTML 2.0
vmap ;bl xi<BLOCKQUOTE></BLOCKQUOTE>P
"
"	BODY				HTML 2.0
vmap ;bd xi<BODY></BODY>P
"
"	CENTER				NETSCAPE
vmap ;ce xi<CENTER></CENTER>P
"
"	DIR	Directory List		HTML 3.0
vmap ;di xi<DIR></DIR>P
"
"	DL	Definition List
vmap ;dl xi<DL></DL>P
"
"	HEADERS, LEVELS 1-6		HTML 2.0
vmap ;h1 xi<H1></H1>P
vmap ;h2 xi<H2></H2>P
vmap ;h3 xi<H3></H3>P
vmap ;h4 xi<H4></H4>P
vmap ;h5 xi<H5></H5>P
vmap ;h6 xi<H6></H6>P
"
"	HEAD				HTML 2.0
vmap ;he xi<HEAD></HEAD>P
"
"	HTML				HTML 3.0
"vmap ;ht xi<HTML></HTML>P
"
"	MENU				HTML 2.0
vmap ;mu xi<MENU></MENU>P
"
"	OL	Ordered List		HTML 3.0
vmap ;ol xi<OL></OL>P
"
"	P	Paragraph		HTML 3.0
vmap ;pp xi<P></P>P
"
"	PRE	Preformatted Text	HTML 2.0
vmap ;pr xi<PRE></PRE>P
"
"	TITLE				HTML 2.0	HEADER
vmap ;ti xi<TITLE></TITLE>P
"
"	UL	Unordered List		HTML 2.0
vmap ;ul xi<UL></UL>P
"
" 2) text style macros
"      To use these macros, use the `v' command to select a portion of text
"      and then call the approporiate macro to change the style of that text.
"
"	Comment Tag
vmap ;cm xi<!--  -->3hP
"
"	ABBREV	Abbreviation		HTML 3.0
vmap ;ab xi<ABBREV></ABBREV>8hP
"
"	ACRONYM				HTML 3.0
vmap ;ac xi<ACRONYM></ACRONYM>9hP
"
"	AU	Author			HTML 3.0
vmap ;au xi<AU></AU>4hP
"
"	B	Boldfaced Text		HTML 2.0
vmap ;bo xi<B></B>3hP
"
"	BANNER				HTML 3.0
vmap ;ba xi<BANNER></BANNER>8hP
"
"	BIG				HTML 3.0
vmap ;bi xi<BIG></BIG>5hP
"
"	BQ	Blockquote		HTML 3.0
vmap ;bq xi<BQ></BQ>4hP
"
"	CAPTION				HTML 3.0
vmap ;ca xi<CAPTION></CAPTION>9hP
"
"	CITE				HTML 2.0
vmap ;ci xi<CITE></CITE>6hP
"
"	CODE				HTML 2.0
vmap ;co xi<CODE></CODE>6hP
"
"	CREDIT				HTML 3.0
vmap ;cr xi<CREDIT></CREDIT>8hP
"
"	DEL	Deleted Text		HTML 3.0
vmap ;de xi<DEL></DEL>5hP
"
"	DFN	Defining Instance	HTML 3.0
vmap ;df xi<DFN></DFN>5hP
"
"	DIV	Document Division	HTML 3.0
vmap ;dv xi<DIV></DIV>5hP
"
"	EM	Emphasize		HTML 2.0
vmap ;em xi<EM></EM>4hP
"
"	FN	Footnote		HTML 3.0
vmap ;fn xi<FN></FN>4hP
"
"	I	Italicized Text		HTML 2.0
vmap ;it xi<I></I>3hP
"
"	INS	Inserted Text		HTML 3.0
vmap ;in xi<INS></INS>5hP
"
"	KBD	Keyboard Text		HTML 2.0
vmap ;kb xi<KBD></KBD>5hP
"
"	LH	List Header		HTML 2.0
vmap ;lh xi<LH></LH>4hP
"
"	NOBR	No Break		NETSCAPE
vmap ;nb xi<NOBR></NOBR>6hP
"
"	NOTE				HTML 3.0
vmap ;no xi<NOTE></NOTE>6hP
"
"	Q	Quote			HTML 3.0
vmap ;qu xi<Q></Q>3hP
"
"	S	Strikethrough		HTML 3.0
vmap ;sk xi<S></S>3hP
"
"	SAMP	Sample Text		HTML 2.0
vmap ;sa xi<SAMP></SAMP>5hP
"
"	SMALL	Small Text		HTML 3.0
vmap ;sm xi<SMALL></SMALL>7hP
"
"	STRONG				HTML 2.0
vmap ;st xi<STRONG></STRONG>8hP
"
"	SUB	Subscript		HTML 3.0
vmap ;sb xi<SUB></SUB>5hP
"
"	SUP	Superscript		HTML 3.0
vmap ;sp xi<SUP></SUP>5hP
"
"	TT	Teletype Text		HTML 2.0
vmap ;tt xi<TT></TT>4hP
"
"	U	Underlined Text		HTML 2.0
vmap ;uu xi<U></U>3hP
"
"	V	Variable		HTML 3.0
vmap ;vv xi<V></V>3hP
"
" 3) link macros
"      To use these macros, use the `v' command to select a portion of text
"      that should become the description of the link and then call the
"      appropriate macro. Then use the `c' command to fill in the destination
"      of the link.
"
"	A HREF	Anchor Hyperlink	HTML 2.0
vmap ;ah xi<A HREF="XXX">pa</A>0?\"XXX\"?s+3v2h
"
"	A NAME	Named Anchor		HTML 2.0
vmap ;an xi<A NAME="XXX">pa</A>0?\"XXX\"?s+3v2h
"
"	FIG	Figure			HTML 3.0
vmap ;fi xi<FIG SRC="XXX">pa</FIG>0?\"XXX\"?s+3v2h
"
"	IMG	Image			HTML 2.0
vmap ;im xi<IMG SRC="XXX" alt="pa">0?\"XXX\"?s+3v2h
"
" 4) other macros
"
"	LANG	Language Context	HTML 3.0
vmap ;la xi<LANG LANG="XXX">pa</LANG>0?\"XXX\"?s+3v2h
"
"	STYLE				HTML 3.0
vmap ;sn xi<STYLE NOTATION="XXX">pa</STYLE>0?\"XXX\"?s+3v2h
"
"	FONT				NETSCAPE
vmap ;fo xi<FONT SIZE="XXX">pa</FONT>0?XXX?s+3v2h
"map! à &agrave<C-V>;
"map! À &Agrave<C-V>;
"map! ç &ccedil<C-V>;
"map! Ç &Ccedil<C-V>;
"map! é &eacute<C-V>;
"map! ê &ecirc<C-V>;
"map! è &egrave<C-V>;
"map! ë &euml<C-V>;
"map! É &Eacute<C-V>;
"map! Ê &Ecirc<C-V>;
"map! È &Egrave<C-V>;
"map! Ë &Euml<C-V>;
"map! î &icirc<C-V>;
"map! Î &Icirc<C-V>;
"map! ï &iuml<C-V>;
"map! Ï &Iuml<C-V>;
"map! ô &ocirc<C-V>;
"map! Ô &ocirc<C-V>;
""map! û &ucirc<C-V>;
"map! Û &Ucirc<C-V>;
"map! ù &ugrave<C-V>;
"map! Ù &Ugrave<C-V>;
"map! ü &uuml<C-V>;
"map! Ü &Uuml<C-V>;
map! e' <C-V>é
map! e` <C-V>è
map! e^ <C-V>ê
map! e" <C-V>ë
map! a^ <C-V>â
map! a` <C-V>à
map! i^ <C-V>î
map! i" <C-V>ï
map! o^ <C-V>ô
map! o` <C-V>ò
map! u" <C-V>ü
map! u^ <C-V>û
map! u` <C-V>ù
map! c, <C-V>ç
map! E' <C-V>É
map! E` <C-V>È
map! E^ <C-V>Ê
map! E" <C-V>Ë
map! A^ <C-V>Â
map! A` <C-V>À
map! I^ <C-V>Î
map! I" <C-V>Ï
map! O^ <C-V>Ô
map! O` <C-V>Ò
map! U" <C-V>Ü
map! U^ <C-V>Û
map! U` <C-V>Ù
map! C, <C-V>Ç
map! << <C-V>«
map! >> <C-V>»
abbrev (TM) <SUP><SMALL>(TM)</SMALL></SUP>
