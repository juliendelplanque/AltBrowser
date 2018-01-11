testing
hasContents
	"Am I leaking objects when I do that ?"

	^ (contents notNil and: [ contents notEmpty ])
		or: [ self inspector hasContents ]