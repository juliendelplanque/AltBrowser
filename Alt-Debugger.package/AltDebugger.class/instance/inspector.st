user interface
inspector
	^ inspector
		ifNil: [ inspector := AltInspector directOn: self selectedNode item ]