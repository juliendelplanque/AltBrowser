private
before: aRBProgramNode send: aSymbol arguments: anArrayOfSymbols
	self
		trace: aRBProgramNode
		send: aSymbol
		with: anArrayOfSymbols
		control: #before