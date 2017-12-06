private
object: anObject selector: sel node: n
	| m |
	super selector: sel node: n.
	object := anObject.
	m := anObject class lookupSelector: sel.
	methodSourceCode := AltMethodNode protectedMethods
		at: (Array with: m methodClass name with: m selector)
		ifAbsent: [ m sourceCode ]