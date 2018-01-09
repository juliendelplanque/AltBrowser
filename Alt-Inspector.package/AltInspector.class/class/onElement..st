instance creation
onElement: anAltEyeElement
	"In this method, we already know which element we will use."

	| target inspector |
	target := AltEyeTreeItemModel on: anAltEyeElement.
	inspector := self new object: target.
	target expand.
	target contents first select.
	^ inspector