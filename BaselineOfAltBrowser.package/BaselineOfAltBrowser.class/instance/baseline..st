baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				package: 'Alt-List';
				package: 'Alt-TypeCheck';
				package: 'Alt-Browser' with: [ spec requires: 'Alt-List' ];
				package: 'Jejak' with: [ spec requires: 'Alt-Browser' ];
				group: 'default'
					with: #('Alt-List' 'Alt-TypeCheck' 'Alt-Browser' 'Jejak') ]