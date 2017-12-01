class variables
reset
	| additions |
	additions := OrderedCollection new.
	self array
		keysAndValuesDo: [ :key :value | value addMethodAdditionTo: additions ].
	additions do: [ :each | each installMethod ].
	additions do: [ :each | each notifyObservers ].
	self array
		keysAndValuesDo:
			[ :key :value | AltMethodNode removeMethodAt: key first and: key second ].
	array := nil.
	self announce: JAllMethodsRemoved new