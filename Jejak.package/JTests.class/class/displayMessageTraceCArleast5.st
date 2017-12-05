examples
displayMessageTraceCArleast5
	"Test tracing on the array."

	"JTests displayMessageTraceCArleast5"

	<example>
	[ JCollecteur reset.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JCFGProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5 ]
		ensure: [ JProbesWriter uninstall ].
	JTraceViewer open