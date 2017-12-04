shortcuts
buildStackShortcutsOn: aKMDispatcher with: aRequestor
	"This is an attempt at handling shortcuts..."

	self selectedItem
		ifNotNil: [ :s | s buildStackShortcutsOn: aKMDispatcher with: aRequestor ]