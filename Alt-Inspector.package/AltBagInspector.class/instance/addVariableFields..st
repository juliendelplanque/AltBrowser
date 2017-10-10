private
addVariableFields: elements
	([ [ self object valuesAndCounts keys sorted ]
		on: Error
		do: [ "case of non sortable keys" self object valuesAndCounts keys ] ]
		on: Error
		do: [ #() ])
		do: [ :key | elements add: (AltBagEyeElement host: self object index: key) ]