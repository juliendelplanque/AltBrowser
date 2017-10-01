displaying
displayMLMessageTraceCArleast5
	"Test tracing on the array."

	"self new displayMLMessageTraceCArleast5"
	
	"JCollecteur recorder initialize"

	[ JCollecteur recorder reset.
	#(#rleast: #reorder: #least:array2:)
		do: [ :e | JMLProbesWriter analyse: JExampleArray >> e ].
	self testCArleast5 ]
		ensure: [ JMLProbesWriter uninstall ].
	JViewer open