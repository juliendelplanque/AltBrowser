examples
displayTraceCArleast5
	"Test tracing on the array."

	"JTests displayTraceCArleast5"

	<example>
	[ JCollecteur reset.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JVariableProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5 ]
		ensure: [ JProbesWriter uninstall ].
	JTraceViewer open