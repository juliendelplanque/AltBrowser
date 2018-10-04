baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				package: 'Alt-List';
				package: 'Alt-Browser' with: [ spec requires: #('Alt-List') ];
				package: 'Alt-TypeCheck' with: [ spec requires: 'Alt-Browser' ];
				package: 'Alt-Inspector' with: [ spec requires: 'Alt-Browser' ];
				package: 'Jejak' with: [ spec requires: 'Alt-Browser' ];
				package: 'Alt-Debugger' with: [ spec requires: 'Alt-Browser' ];
				group: 'default'
					with:
					#('Alt-Browser' 'Alt-Inspector' 'Jejak' 'Alt-TypeCheck' 'Alt-Debugger');
				group: 'browser-only' with: #('Alt-Browser') ]