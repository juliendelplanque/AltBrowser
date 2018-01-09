accessing
announcements
	^ announcements ifNil: [ announcements := OrderedCollection new ]