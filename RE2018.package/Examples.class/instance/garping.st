as yet unclassified
garping
	
	| garpable |
	garpable := Garpable new.
	
	GarpMethodWrapper wrapClass: garpable.
	GarpMethodWrapper unwrapClass: garpable.
	
	GarpMethodWrapper wrapObject: garpable.
	GarpMethodWrapper unwrapObject: garpable.
	
	garpable garp.
	garpable ungarp.
	self garp.
	self ungarp.

	GarpMethodWrapper wrapClass: Garpable in: [ garpable doTheThing ].	
	GarpMethodWrapper wrapObject: garpable in: [ garpable doTheThing ].