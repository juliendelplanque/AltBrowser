private
childrenItems
	"Extract from the organisation the various classes. Use the same implementation as the Class Category, if only one category."
	
	"For the time being, do not track tags in RPackages."

	| o |
	o := OrderedCollection new.
	o add: self item.
	o addAll: (self class orderClasses: self item definedClasses asOrderedCollection).
	^ o