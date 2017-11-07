shortcuts
buildStackMenu: aMenu
	"The default stack menu."

	self selectedItem buildStackMenu: aMenu on: stackMorph for: self.
	^ aMenu