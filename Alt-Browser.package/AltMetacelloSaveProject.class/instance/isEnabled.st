testing
isEnabled
	^ self getItem projectRegistration notNil
		and: [ self getItem isBaseline
				and:
					[ self getItem contents anySatisfy: [ :e | e mcWorkingCopy modified ] ] ]