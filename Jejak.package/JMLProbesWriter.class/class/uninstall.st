code manipulation
uninstall
	"Go through the originals and reinstate them."

	JInstrumentedMethods2
		keysAndValuesDo: [ :key :value | value do: [ :e | e uninstall ] ].
	JInstrumentedMethods2 reset