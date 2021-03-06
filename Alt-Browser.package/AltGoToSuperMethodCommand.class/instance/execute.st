execution
execute
	"Move to that place. Can only be called if enabled."

	| tClass tClassNode tMethodNode |
	tClass := self findTargetClass.
	self assert: tClass notNil.
	AltBrowser rootItems detect: [ :each | (tClassNode := each findClass: tClass) notNil ].
	tMethodNode := tClassNode findMethod: requestor selectedNode item item in: tClass.
	requestor selectPathForAbstractItem: tMethodNode