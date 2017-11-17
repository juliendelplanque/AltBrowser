examples
codeCallingCodeWithHalt
	<example>
	
	| x y |
	x := 1.
	y := self codeWithHalt.
	x := x + y.
	^ x