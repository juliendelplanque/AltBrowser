accessing
astNode
	^ item nodeId isInteger
		ifTrue: [ JCodeNodeFinder
				find: item nodeId
				inSource: self sourceCode
				andClass: self styleClass ]
		ifFalse: [ item nodeId ]