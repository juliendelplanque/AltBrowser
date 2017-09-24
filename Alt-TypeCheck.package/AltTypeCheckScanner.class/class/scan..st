instance creation
scan: aString
	^ (self on: (ReadStream on: aString)) scan ifNil: [ AltAnyType new ]