accessing
announcements
	^ announcements
		ifNil: [ announcements := OrderedCollection new.
			host ifNotNil: [ self subscribe ].
			announcements ]