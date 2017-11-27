commands
buildTreeShortcutsOn: aKMDispatcher for: aRequestor
	"This is an attempt at handling shortcuts...."

	(self pragmas: #treeAreaCommand from: self class to: AltTreeItemModel)
		do: [ :e | 
			(self perform: e methodSelector)
				do: [ :c | 
					| command |
					command := c asClass on: aRequestor treeMorph for: aRequestor.
					command isEnabled
						ifTrue: [ command buildShortcut: aKMDispatcher ] ] ]