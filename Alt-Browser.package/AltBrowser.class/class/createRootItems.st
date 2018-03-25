private
createRootItems
	"Build the organisation out of some classification and collect all remaining packages from the list of MCWorkingCopy in the system."

	| convertBlock allBandC packages step current |
	packages := MCWorkingCopy allManagers.
	convertBlock := [ :entry | 
	entry isArray
		ifFalse: [ entry -> OrderedCollection new ]
		ifTrue: [ entry first
				->
					(entry allButFirst collect: [ :e | convertBlock value: e ])
						asOrderedCollection ] ].
	Root := AltRootNode
		with:
			#root
				->
					((self categories collect: [ :e | convertBlock value: e ])
						, {RPackage defaultPackageName}) asOrderedCollection.
	allBandC := self allBaselinesAndConfigurations.
	step := 100 / packages size.
	UIManager default
		informUserDuring: [ :bar | 
			bar label: 'Scanning packages'.
			bar current: 0.
			allBandC
				do: [ :e | 
					bar current: bar current + step.
					self
						aMCWorkingCopyCreated:
							(MCWorkingCopyCreated
								workingCopy: e
								package: (MCPackage named: e packageName)) ].
			(packages copyWithoutAll: allBandC)
				do: [ :e | 
					bar current: bar current + step.
					self
						aMCWorkingCopyCreated:
							(MCWorkingCopyCreated
								workingCopy: e
								package: (MCPackage named: e packageName)) ].
			self aRecentPackagesReset ]