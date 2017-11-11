instance creation
directOn: anObject
	"Note how we create the different nodes before expanding and selecting; this is important."

	| target inspector |
	target := AltEyeTreeItemModel on: (AltRootEyeElement host: anObject).
	inspector := self new object: target.
	target expand.
	target contents first select.
	^ inspector