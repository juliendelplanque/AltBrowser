commands
buildStackShortcutsOn: aKMDispatcher with: aRequestor
	"This is an attempt at handling shortcuts...."

	(self
		pragmas: #stackAreaCommand
		from: self class
		to: AltContextItemModel)
		do: [ :e | 
			(self perform: e methodSelector)
				do: [ :c | 
					| command |
					command := c asClass on: aRequestor stackMorph for: aRequestor.
					command isEnabled
						ifTrue: [ command buildShortcut: aKMDispatcher ] ] ]