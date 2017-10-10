private
addVariableFields: elements
	"add the variable fields to the inspector. Limit to about 20k elements."

	self variableFieldsToShow
		do: [ :index | 
			elements
				add: (AltBasicIndexedEyeElement host: self object index: index) ]