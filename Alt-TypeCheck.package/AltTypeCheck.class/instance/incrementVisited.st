private
incrementVisited
	visited := visited ifNil: [ 1 ] ifNotNil: [ visited + 1 ]