tests
testErrorRaised
	| inspector morphsBefore morphsAfter |
	morphsBefore := World submorphs.
	self instancesToTry
		do: [ :each | inspector := AltInspector inspect: each ].
	morphsAfter := World submorphs.
	(morphsAfter copyWithoutAll: morphsBefore)
		do: [ :morph | morph delete ]