examples
displayMessageTraceCArleast5
	"Test tracing on the array."

	"JTests displayMessageTraceCArleast5"

	<example>
	JCollecteur recorder: JRecorder new.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JCFGProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5.
	JTraceViewer open.
	JProbesWriter uninstall