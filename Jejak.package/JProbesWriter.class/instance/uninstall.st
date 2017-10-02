code manipulation
uninstall
	"Go through the originals and reinstate them."

	| additions |
	additions := OrderedCollection new.
	JInstrumentedMethods
		keysAndValuesDo: [ :key :value | value addMethodAdditionTo: additions ].
	additions do: [ :each | each installMethod ].
	additions do: [ :each | each notifyObservers ].
	JInstrumentedMethods reset