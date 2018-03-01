settings
altDebuggerSettingsOn: aBuilder
	<systemsettings>
	(aBuilder nodeClass: AltSettingDeclaration name: #defaultDebugger)
		label: 'Set as default debugger' translated;
		parent: #AltBrowser;
		target: self;
		description: 'Set AltDebugger as the default debugger' translated