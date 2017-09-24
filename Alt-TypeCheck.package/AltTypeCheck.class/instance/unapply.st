accessing
unapply
	self links do: [ :each | each uninstall ].
	links := nil