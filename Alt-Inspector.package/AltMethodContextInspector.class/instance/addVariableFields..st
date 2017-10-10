private
addVariableFields: elements
	self tempNames
		withIndexDo: [ :name :index | 
			elements
				add:
					(AltContextTempEyeElement
						host: self object
						tempName: name
						tempIndex: index) ]