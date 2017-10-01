actions
rleast: anInteger
	"Recursive least k elements on anArray. If the array is k in length or less, return it ordered. Else, divide."

	| n a1 a2 ml |
	n := ((self size + anInteger - 1) / anInteger) truncated.
	n == 1
		ifTrue: [ ^ self reorder: self ].
	ml := (n / 2) truncated * anInteger.
	a1 := (self copyFrom: 1 to: ml) rleast: anInteger.
	a2 := (self copyFrom: ml + 1 to: self size) rleast: anInteger.
	a2 at: 2 put: (a2 last collect: [ :p | p + ml ]).
	^ self least: a1 array2: a2