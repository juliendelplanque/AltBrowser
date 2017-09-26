accessing
register: aClassOrPackage with: anAltTypeCheck
	"When registering, we should not have something already there."

	self assert: (self register includesKey: aClassOrPackage) not.
	self register at: aClassOrPackage put: anAltTypeCheck