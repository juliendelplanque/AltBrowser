accessing
applyOn: aClassOrAPackage
	aClassOrAPackage methods do: [ :each | self applyOnMethod: each ]