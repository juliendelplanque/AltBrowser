private
addVariableFields: elements
	self object initialPC to: self object size do: [ :index | 
		elements
			add:
				(AltDynamicEyeElement
					host: self object
					label: 'bc ' , index asString
					value: (self object at: index) asString) ]