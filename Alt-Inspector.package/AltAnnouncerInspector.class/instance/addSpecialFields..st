private
addSpecialFields: elements
	elements add: (AltAnnouncerEyeElement host: self object).
	elements
		add:
			(AltMemoizedEyeElement
				host: self object
				label: 'subscribers'
				value: [ (self object subscriptions subscriptions
						collect: [ :e | e subscriber ]) asIdentitySet ])