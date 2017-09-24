tests-scan
testEmpty
	| scanner |
	scanner := AltTypeCheckScanner on: (ReadStream on: '').
	self assert: scanner scan isNil