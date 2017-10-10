accessing
description
	"For big value to print, overwrite description block"

	description ifNil: [ ^ self value asString ].
	^ description cull: self value