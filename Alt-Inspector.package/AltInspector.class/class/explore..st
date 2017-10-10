instance creation
explore: anObject
	"Note how we create the different nodes before expanding and selecting; this is important."

	| target inspector |
	target := AltEyeTreeItemModel on: (AltRootEyeElement host: anObject).
	inspector := self new
		object:
			(AltEyeTreeItemModel new
				contents: (Array with: target);
				yourself).
	target expand.
	target select.
	^ inspector open