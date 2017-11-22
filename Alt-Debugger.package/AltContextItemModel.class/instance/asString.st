printing
asString
	| method classLocation receiverClass |
	method := item home method.
	classLocation := method methodClass.
	receiverClass := item receiver class.

	"If the receiver is differen from the implementor, show the original method implementor"
	classLocation := classLocation = receiverClass
		ifTrue: [ classLocation name ]
		ifFalse: [ receiverClass name , '(' , classLocation name , ')' ].
	item isBlockContext
		ifTrue: [ classLocation := '[...] in ' , classLocation ].
	^ classLocation , '>>' , method selector asString