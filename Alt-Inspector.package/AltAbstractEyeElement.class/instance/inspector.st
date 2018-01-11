accessing
inspector
	"Can be customized by an element to directly access the right inspector.
	Allow for a context dependent inspector association (i.e. the inspector
	for a collection used as a translation of an object content can be
	something else than the standard collection inspector)."

	^ AltItemInspector inspector: self value