menu
buildMenu: aMenu
	^ self
		buildStackMenu: aMenu
		on: self model stackMorph
		with: self model