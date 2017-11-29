menu
showMenuForRowIndex: rowIndex
	"Menu for a 0 selection means menu on the hidden root, if this is the case."

	"I don't remember cases where at: 1 equal the root. Probably again a protection against empty lists."

	| menu |
	(self selectedRowIndex isZero
		and: [ self model size > 0 and: [ (self model at: 1) == self model ] ])
		ifTrue: [ ^ self ].
	menu := UIManager default newMenuIn: self for: self model.
	self selectedRowIndex isZero
		ifTrue: [ (self model size > 0 and: [ (self model at: 1) == self model ])
				ifTrue: [ ^ self ]
				ifFalse: [ menu := self model buildMenu: menu ] ]
		ifFalse: [ menu := (self model at: self selectedRowIndex) buildMenu: menu ].
	menu invokeModal.
	self changed