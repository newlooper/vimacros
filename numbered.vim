"The mapping \#Id sets up register i; [cnt]@i will then modify
"a pre-existing list into a sequential list.  You may start
"the list at any number by modifying the first number appropriately.
"
"Example:  put your cursor on the first 1 below.  Press #Id
"          to set up register i (only has to be done once per
"          session -- maybe a vim genius can tell me how to get
"          my .vimrc to do that!).  Press 6@i.
"
"Begin with:
"    1)
"    2)
"    10)
"    9)
"    8)
"    7)
"    4)
"
"End with:
"    1)
"    2)
"    3)
"    4)
"    5)
"    6)
"    7)
map #Id mao lb"zdwPlbjlbdw"zP<C-V><C-A>lb<Esc>0dw"iy$ddk`a
map #ID mao lb"zdwPlbjlbdw"zP<C-V><C-X>lb<Esc>0dw"iy$ddk`a


