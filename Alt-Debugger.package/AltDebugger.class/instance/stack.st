accessing
stack
	^ stack
		ifNil: [ stack := AltContextItemRootModel new.
			stack model: self.
			stack announcer
				when: AltSelectionChanged send: #updateSelection to: self;
				when: AltListChanged send: #updateSelection to: self.
			stack
				contents:
					(self session stack
						collect: [ :e | AltContextItemModel on: e parent: stack ]).
			stack contents first select.
			stack ]