private
trace: aRBProgramNode send: aSymbol with: anArrayOfSymbols control: anotherSymbol
	"Create a Metalink on the node, with the right action and control argument."

	| link |
	link := MetaLink new
		metaObject: JCollecteur recorder;
		selector: aSymbol;
		arguments: anArrayOfSymbols;
		control: anotherSymbol.
	aRBProgramNode link: link.
	self links add: link