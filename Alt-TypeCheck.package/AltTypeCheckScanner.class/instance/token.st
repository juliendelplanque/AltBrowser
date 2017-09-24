accessing
token
	^ token ifNil: [ token := WriteStream on: String new ]