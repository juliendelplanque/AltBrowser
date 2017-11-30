examples
displayTraceCArleast5
	"Test tracing on the array."

	"JTests displayTraceCArleast5"

	<example>
	JCollecteur recorder: JRecorder new.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JVariableProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5.
	JTraceViewer open.
	JProbesWriter uninstall