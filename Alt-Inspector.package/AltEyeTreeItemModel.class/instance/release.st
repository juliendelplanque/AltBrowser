initialize-release
release
	super release.
	contents ifNotNil: [ :c | c do: [ :e | e release ] ].
	item release