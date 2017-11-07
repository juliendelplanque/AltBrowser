commands
buildStackShortcutsOn: aKMDispatcher for: aRequestor
	"This is an attempt at handling shortcuts...."

	(self
		pragmas: #stackAreaCommand
		from: item class
		to: AltAbstractEyeElement)
		do: [ :e | 
			(item perform: e methodSelector)
				do: [ :c | 
					| command |
					command := c asClass on: aRequestor stackMorph for: aRequestor.
					command isEnabled
						ifTrue: [ command buildShortcut: aKMDispatcher ] ] ]