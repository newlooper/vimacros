if @a == arithA
	normal! oRight!
	let @a="_gq"
	let arithC=arithC+arithI
else
	normal! oWhat?
	let @a="o"
	let arithW=arithW+1
endif
