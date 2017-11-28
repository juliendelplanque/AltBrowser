accessing
records
	^ records
		ifNil: [ records := JViewer2RootNode on: JCollecteur recorder stack first.
			records model: self.
			records announcer
				when: AltSelectionChanged send: #updateSelection to: self;
				when: AltListChanged send: #updateSelection to: self.
			records ]