shortcuts
updateTreeKeymap
	"Update the tree keymap."

	"Don't forget to update the tree."

	treeMorph ifNil: [ ^ self ].
	treeMorph kmDispatcher
		reset;
		attachCategory: #MorphFocusNavigation;
		attachCategory: #MorphFocusCtrlNavigation.
	self buildTreeShortcutsOn: self treeMorph kmDispatcher with: self