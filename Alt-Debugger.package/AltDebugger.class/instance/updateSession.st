selection
updateSession
	"Update when the session changes."

	stack
		ifNotNil: [ stack
				contents:
					(self session stack
						collect: [ :e | AltContextItemModel on: e parent: stack ]).
			stack changed.
			self selectInterruptedContext.
			self updateSelection ]