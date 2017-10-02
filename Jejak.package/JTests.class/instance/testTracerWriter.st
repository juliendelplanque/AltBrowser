testing
testTracerWriter
	"Test tracing on the array."

	JCFGProbesWriter analyse: JExampleArray >> #rleast:.
	JProbesWriter uninstall