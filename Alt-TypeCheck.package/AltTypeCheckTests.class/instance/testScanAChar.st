tests-scan
testScanAChar
	| scanner |
	scanner := AltTypeCheckScanner on: (ReadStream on: 'aChar').
	self assert: scanner scan notNil