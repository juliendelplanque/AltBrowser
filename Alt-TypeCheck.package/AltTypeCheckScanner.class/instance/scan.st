building
scan
	self step.
	current = $a
		ifTrue: [ self step.
			current = $n
				ifTrue: [ self step.
					current = $o
						ifTrue: [ self step.
							current = $t
								ifFalse: [ ^ nil ]
								ifTrue: [ self step.
									current = $h
										ifFalse: [ ^ nil ]
										ifTrue: [ self step.
											current = $e
												ifFalse: [ ^ nil ]
												ifTrue: [ self step.
													current = $r
														ifFalse: [ ^ nil ] ] ] ] ] ] ].
	current isUppercase
		ifTrue: [ self token nextPut: current.
			self step.
			[ current isAlphaNumeric ]
				whileTrue: [ current = $O
						ifTrue: [ self tokenClass
								ifNotNil: [ :aClass | 
									type := AltObjectType on: aClass.
									self token nextPut: current.
									self step.
									current = $f
										ifTrue: [ ^ (self class on: stream) scan ifNotNil: [ :n | type of: n ] ].
									current = $r
										ifTrue: [ ^ (self class on: stream) scan ifNotNil: [ :n | type or: n ] ].
									self token nextPut: current ]
								ifNil: [ self token nextPut: current ] ]
						ifFalse: [ current isUppercase
								ifTrue: [ self tokenClass
										ifNotNil: [ :aClass | type := AltObjectType on: aClass ] ].
							self token nextPut: current ].
					self step ].
			self tokenClass ifNotNil: [ :aClass | ^ AltObjectType on: aClass ] ].
	^ type