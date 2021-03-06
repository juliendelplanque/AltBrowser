user interface
open
	"Open the window, as simple as that."

	window := self theme newWindowIn: World for: self title: self title.
	treeMorph := self defaultTreeMorph.
	treeMorph buildContents.
	(textMorph := PluggableTextMorph
		on: self source
		text: #contents
		accept: #contents:
		readSelection: nil
		menu: #buildTextMenu:) font: StandardFonts codeFont.
	window addMorph: treeMorph fullFrame: (LayoutFrame fractions: (0 @ 0.0 corner: 0.3 @ 1) offsets: (0 @ 0 corner: 0 @ 0)).
	window addMorph: textMorph fullFrame: (LayoutFrame fractions: (0.3 @ 0.0 corner: 1 @ 1) offsets: (0 @ 0 corner: 0 @ 0)).
	window minimumExtent: 500 @ 500.
	window open