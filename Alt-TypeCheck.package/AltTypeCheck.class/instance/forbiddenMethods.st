resources
forbiddenMethods
	"Methods that should not have a guard, otherwise we end up with an endless loop when checking."

	^ {(AltArrayOfChecks >> #checkAll:)}