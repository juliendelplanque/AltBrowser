announcements
announce: anEvent
	"If the announcer is nil, then nobody is listening to it and there is no need to send the event."

	announcer ifNotNil: [ announcer announce: anEvent ]