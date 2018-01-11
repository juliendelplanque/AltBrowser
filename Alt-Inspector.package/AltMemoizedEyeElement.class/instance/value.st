accessing
value
	^ cache ifNil: [ cache := value value ]