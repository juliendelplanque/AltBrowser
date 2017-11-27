updating
updateRows
	"Call with a cache of pre-existing items."

	exposedItems ifNotNil: [ self updateRows: exposedItems ]