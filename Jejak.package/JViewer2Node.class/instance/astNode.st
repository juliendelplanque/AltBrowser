accessing
astNode
	^ item nodeId isInteger
		ifTrue: [ JCodeNodeFinder find: item nodeId in: self compiledMethod ]
		ifFalse: [ item nodeId ]