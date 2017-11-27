accessing
astNode
	^ item nodeId isInteger
		ifTrue: [ JCodeNodeFinder find: item nodeId in: self sourceCode ]
		ifFalse: [ item nodeId ]