code manipulation
analyse: aCompiledMethod
	"Instrument a method, store the original source. Only manipulates directly a compiled method."

	| aRBMethodNode aTracedCompiledMethod aClass source aMCMethodDefinition |
	aClass := aCompiledMethod methodClass.
	aMCMethodDefinition := aCompiledMethod asRingDefinition
		asMCMethodDefinition.
	aClass isNil
		ifTrue: [ ^ self ].
	(JInstrumentedMethods
		includesClass: aClass name
		andSelector: aCompiledMethod selector)
		ifTrue: [ ExampleBuilderMorph new alert: 'Method already instrumented.'.
			^ self ].
	mclass := aClass.
	aRBMethodNode := self visitNode: aCompiledMethod ast.
	SystemAnnouncer uniqueInstance
		suspendAllWhile: [ aTracedCompiledMethod := aClass
				lookupSelector:
					(aClass
						compile: aRBMethodNode formattedCode
						classified: aCompiledMethod category
						notifying: nil).
			self
				changeLiteralRecorder: #JCollecteur
				to: JCollecteur recorder
				in: aTracedCompiledMethod.
			JInstrumentedMethods
				atClass: aClass name
				andSelector: aCompiledMethod selector
				put: aMCMethodDefinition ]