examples
codeCallingCodeWithHalt
	<example>
	
	| x y |
	x := 2.
	y := self codeWithHalt.
	x := x + y.
	^ x