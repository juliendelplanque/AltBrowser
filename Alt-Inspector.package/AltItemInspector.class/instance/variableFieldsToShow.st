private
variableFieldsToShow
	"Limit the number of fields to show to about 20k elements."

	| bSize |
	bSize := self objectVariableSize.
	^ bSize <= 20000
		ifTrue: [ 1 to: bSize ]
		ifFalse: [ (1 to: 10000) , (bSize - 10000 to: bSize) ]