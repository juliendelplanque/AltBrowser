settings
filterNilSelectors
  	^ NilSelectorsFilterEnabled ifNil:[ NilSelectorsFilterEnabled := false ]