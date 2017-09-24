instance creation
new
	^ instance ifNil: [ instance := self basicNew ]