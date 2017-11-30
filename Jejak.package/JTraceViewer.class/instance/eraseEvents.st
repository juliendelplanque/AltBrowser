actions
eraseEvents
	"Erase all recorded events."

	JCollecteur recorder reset.
	self records rebuildContents.
	source contents: ''