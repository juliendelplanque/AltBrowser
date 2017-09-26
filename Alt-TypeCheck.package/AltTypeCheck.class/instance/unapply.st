accessing
unapply
	self links do: [ :each | each uninstall ].
	links := nil.
	entity ifNotNil: [ self class register removeKey: entity ]