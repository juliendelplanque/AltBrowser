shortcuts
buildTreeMenu: aMenu
	"The tree menu."

	self selectedItem
		ifNotNil: [ :s | s buildStackMenu: aMenu on: treeMorph for: self ].
	^ aMenu