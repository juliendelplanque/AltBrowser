selection
selectInterruptedContext
	self session interruptedContext
		in: [ :ic | 
			self stack contents
				do: [ :e | 
					e item = ic
						ifTrue: [ ^ e select ] ] ]