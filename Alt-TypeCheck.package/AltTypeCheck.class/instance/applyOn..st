accessing
applyOn: aClassOrPackage
	"Register first: if we have already registered that class, it will trigger an assert."

	entity := aClassOrPackage.
	self class register: aClassOrPackage with: self.
	aClassOrPackage methods do: [ :each | self applyOnMethod: each ].
	visited
		ifNil: [ self inform: 'No method guarded'.
			self unapply ]
		ifNotNil: [ self
				inform:
					'TypeCheck: methods visited: ' , visited printString , ', guarded: '
						, self links size printString , ', coverage: '
						, (links size / visited * 100) rounded printString , '%' ]