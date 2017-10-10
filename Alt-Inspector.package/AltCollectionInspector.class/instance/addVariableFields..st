private
addVariableFields: elements
	"add the variable fields to the inspector."

	self variableFieldsToShow
		do:
			[ :index | elements add: (AltIndexedEyeElement host: self object index: index) ]