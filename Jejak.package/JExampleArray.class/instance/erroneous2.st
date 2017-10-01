actions
erroneous2
	"This code looks a bit like the one I have an error with when adding a metalink to JExampleArray>>#erroneous... Looking at the IR, one can see where the error is: the MetaLink addition after the last instruction of the block forget to copy the :p argument in the [p+ 1] block and IR generation then fails."

	| r |
	r := #(1 2)
		at: 2
		put:
			(#(1 2)
				collect: [ :p | 
					[ p + 1 ]
						ensure: [ JCollecteur value: 1 ] ]).
	^ r