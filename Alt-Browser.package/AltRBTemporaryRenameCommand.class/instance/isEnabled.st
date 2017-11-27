testing
isEnabled
	^ requestor selectedItem isProtected not
		and: [ target hasUnacceptedEdits not ]