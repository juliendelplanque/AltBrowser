execution
execute
	"Ask for a category name and create it."

	| name |
	name := UIManager default request: 'New Category name?'.
	name notNil
		ifTrue: [ 
			| item |
			item := AltPackageCategoryNode with: name -> OrderedCollection new.
			requestor selectedNode notNil
				ifTrue: [ AltBrowser rootItems add: item afterIndex: (AltBrowser rootItems indexOf: requestor selectedNode item) ]
				ifFalse: [ AltBrowser rootItems add: item ].
			AltBrowser announcer announce: (AltNodeAdded node: item).
			^ item ]