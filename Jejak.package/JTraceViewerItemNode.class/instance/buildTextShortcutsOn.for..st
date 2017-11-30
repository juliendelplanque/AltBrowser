commands
buildTextShortcutsOn: aKMDispatcher for: aRequestor
	"This is an attempt at handling shortcuts...."

	(self pragmas: #textAreaCommand from: self class to: AltTreeItemModel)
		do: [ :e | 
			(self perform: e methodSelector)
				do: [ :c | 
					| command |
					command := c asClass on: aRequestor textMorph for: aRequestor.
					command isEnabled
						ifTrue: [ command buildShortcut: aKMDispatcher ] ] ]