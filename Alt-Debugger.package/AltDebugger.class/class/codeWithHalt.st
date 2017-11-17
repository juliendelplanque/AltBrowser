examples
codeWithHalt
	<example>
	| x y |
	x := 1.
	y := 5.
	x := x + y.
	self halt.
	y := y + x.
	^ y