resources
forbiddenMethods
	"Methods that should not have a guard, otherwise we end up with an endless loop when checking."

	^ {(AltAbstractType >> #check:).
	(AltObjectType >> #check:).
	(AltCollectionType >> #check:).
	(AltAnyType >> #check:).
	(AltOrType >> #check:).
	(AltAndType >> #check:).
	(AltArrayOfChecks >> #checkAll:)}