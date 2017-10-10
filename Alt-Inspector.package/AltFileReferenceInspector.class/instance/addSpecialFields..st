private
addSpecialFields: elements
	self object isDirectory
		ifTrue: [ [ self object children
				do:
					[ :each | elements add: (AltDynamicEyeElement host: self object value: each) ] ]
				on: DirectoryDoesNotExist
				do: [  ] ]