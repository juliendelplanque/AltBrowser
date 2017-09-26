accessing
register
	^ Register ifNil: [ Register := IdentityDictionary new ]