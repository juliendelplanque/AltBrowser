updating
refresh
	"model change triggers a refresh."

	self owner ifNil: [ ^ self ].
	self setNeedsRefreshItems.
	self clearModelCachedData.
	super changed