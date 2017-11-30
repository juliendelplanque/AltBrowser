examples
displayMLVariableTraceCArleast5
	"Test tracing on the array."

	"self displayMLVariableTraceCArleast5"

	"JCollecteur recorder initialize"

	<example>
	[ JCollecteur recorder reset.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JMLVariablesProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5 ]
		ensure: [ JMLAbstractProbesWriter uninstall ].
	JTraceViewer open