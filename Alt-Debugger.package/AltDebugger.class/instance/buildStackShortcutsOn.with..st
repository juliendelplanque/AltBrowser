shortcuts
buildStackShortcutsOn: aKMDispatcher with: aRequestor
	"This is an attempt at handling shortcuts..."

	self selectedItem
		buildStackShortcutsOn: aKMDispatcher
		for: aRequestor