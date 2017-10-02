displaying
displayMessageTraceCArleast5
	"Test tracing on the array."

	"JTests new displayMessageTraceCArleast5"

	JCollecteur recorder: JRecorder new.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JCFGProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5.
	JViewer open.
	JProbesWriter uninstall