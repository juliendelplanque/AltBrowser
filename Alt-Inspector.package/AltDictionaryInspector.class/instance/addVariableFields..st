private
addVariableFields: elements
	([ [ self object keys sort ]
		on: Error
		do: [ "case of non sortable keys" self object keys ] ]
		on: Error
		do: [ #() ])
		do:
			[ :key | elements add: (AltIndexedEyeElement host: self object index: key) ]