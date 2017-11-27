shortcuts
buildTreeShortcutsOn: aKMDispatcher with: aRequestor
	"This is an attempt at handling shortcuts..."

	self selectedItem
		ifNotNil: [ :s | s buildTreeShortcutsOn: aKMDispatcher for: aRequestor ]