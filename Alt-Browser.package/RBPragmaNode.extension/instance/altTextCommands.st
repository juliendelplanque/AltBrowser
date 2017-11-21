*alt-browser
altTextCommands
	"Alt Browser commands enabled on this RB node."

	(#(example script) includes: self selector)
		ifTrue:
			[ ^ #(#AltImplementorsOfTextCommand #AltSendersTextCommand #AltMethodDoItCommand) ]
		ifFalse: [ ^ #(#AltImplementorsOfTextCommand #AltSendersTextCommand) ]