inspecting
inspector: anObject
	^ anObject class altInspectorClass new
		object: anObject;
		yourself