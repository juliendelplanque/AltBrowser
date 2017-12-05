examples
displayCleanTraceCArleast5
	"Test tracing on the array."

	"JTests displayCleanTraceCArleast5"

	<example>
	[ JCollecteur reset.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JVariableProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5.
	JLoopArrange do: JCollecteur recorder elements first value.
	JMethodArrange do: JCollecteur recorder elements first value ]
		ensure: [ JProbesWriter uninstall ].
	JTraceViewer open