actions
erroneous
	| r |
	r := #(1 2) at: 2 put: (#(1 2) collect: [ :p | p + 1 ]).
	^ r