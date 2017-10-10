private
addVariableFields: elements
	"Create an external index on the set contents when iterating over it; create one eye element per item in the set."

	| externalIndex |
	externalIndex := 1.
	self object array
		withIndexDo: [ :value :index | 
			value
				ifNotNil: [ elements
						add:
							(AltSetEyeElement
								host: self object
								index: index
								externalIndex: externalIndex).
					externalIndex := externalIndex + 1 ] ]