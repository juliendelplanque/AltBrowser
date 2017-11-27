accessing
records
	^ records
		ifNil: [ records := JViewer2Node on: JCollecteur recorder stack first ]