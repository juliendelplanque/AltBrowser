updating
aClassAdded: anEvent
	"Ok, a class was added. Find the package it belongs to (or none)."

	| node r package cat |
	package := MCWorkingCopy registry detect: [ :mgr | mgr packageInfo includesClass: anEvent itemClass ] ifNone: [ nil ].
	self assert: package notNil.
	node := self rootItems detect: [ :e | (r := e findPackage: package) notNil ] ifNone: [ ^ self ].
	self rootItems detect: [ :e | (cat := e findClassCategory: anEvent itemClass category) notNil ] ifNone: [ nil ].
	cat notNil
		ifTrue: [ 
			| classNode |
			cat contentsNotNil
				ifTrue: [ 
					classNode := cat addChild: anEvent itemClass.
					self allInstances do: [ :l | l addNode: classNode ] ] ]
		ifFalse: [ 
			r contentsNotNil
				ifTrue: [ 
					| classNode |
					classNode := r addChild: anEvent itemClass.
					self allInstances do: [ :l | l addNode: classNode ] ] ]