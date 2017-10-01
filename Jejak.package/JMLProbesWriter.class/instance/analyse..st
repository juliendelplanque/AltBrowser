code manipulation
analyse: aCompiledMethod
	"Instrument a method, store the original. Has provisions for looking in the
	class hierarchy, but, for now, the uninstall will copy the method in the subclass."

	"Currently, this does not keep the original source. I'd like to keep it, how should this be done? I'll ask."

	| n cm class s |
	class := aCompiledMethod methodClass.
	class isNil
		ifTrue: [ ^ self ].
	(JInstrumentedMethods includesKey: aCompiledMethod)
		ifTrue: [ ExampleBuilderMorph new alert: 'Method already instrumented.'.
			^ self ].
	n := self visitNode: aCompiledMethod ast.
	JInstrumentedMethods2 at: aCompiledMethod put: self links