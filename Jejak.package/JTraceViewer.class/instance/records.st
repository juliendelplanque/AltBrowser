accessing
records
	^ records
		ifNil:
			[ records := JTraceViewerItemNode on: JCollecteur recorder stack first.
			records announcer
				when: AltSelectionChanged send: #updateSelection to: self;
				when: AltListChanged send: #updateSelection to: self.
			records ]