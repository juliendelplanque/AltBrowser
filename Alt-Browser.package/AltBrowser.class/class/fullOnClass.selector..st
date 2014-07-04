instance creation
fullOnClass: aClass selector: aSelector
	"Open on a class."

	| s a |
	aSelector isNil
		ifTrue: [ ^ self fullOnClass: aClass ].
	self rootItems anySatisfy: [ :each | (s := each findMethod: aSelector in: aClass) notNil ].
	a := self new.
	a
		rbEnvironment:
			(RBClassEnvironment
				classes:
					{(aClass theNonMetaClass).
					(aClass theMetaClass)}).
	a open.
	s ifNotNil: [ a selectPathForAbstractItem: s ]