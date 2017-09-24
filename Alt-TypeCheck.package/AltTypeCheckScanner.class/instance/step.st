building
step
	stream atEnd
		ifTrue: [ ^ current := AltEOFCharacter new ].
	^ current := stream next