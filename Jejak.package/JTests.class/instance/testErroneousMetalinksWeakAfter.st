testing
testErroneousMetalinksWeakAfter
	| link node |
	node := nil.
	link := MetaLink new
		metaObject: [ :n | node := n ];
		selector: #value:;
		arguments: #(node);
		option: #(+ optionWeakAfter);
		control: #after.
	self assert: #(2 3) = (JExampleArray new: 5) erroneous.
	[ (JExampleArray >> #erroneous) ast body statements first value
		arguments last arguments first statements last link: link.
	self assert: #(2 3) = (JExampleArray new: 5) erroneous.
	self assert: node notNil.
	self assert: (node parent parent isKindOf: RBBlockNode) ]
		ensure: [ link uninstall ]