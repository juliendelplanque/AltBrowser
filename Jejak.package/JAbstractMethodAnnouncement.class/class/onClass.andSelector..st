instance creation
onClass: aClassName andSelector: aSymbolSelector
	^ self new
		methodClass: aClassName;
		methodSelector: aSymbolSelector