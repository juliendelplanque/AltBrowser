testing
testTraceVariableCArleast5
	"Test tracing on the array."

	JCollecteur recorder: JRecorder new.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JVariableProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5.
	JProbesWriter uninstall.
	JCollecteur recorder reset