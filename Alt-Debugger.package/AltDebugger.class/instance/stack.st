accessing
stack
	^ stack
		ifNil: [ stack := AltContextItemModel new.
			stack
				contents:
					(self session stack
						collect: [ :e | AltContextItemModel on: e parent: stack ]) ]