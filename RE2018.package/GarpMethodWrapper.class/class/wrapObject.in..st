wrapping
wrapObject: anObject in: aBlock

	"Creates wrappers for all methods in anObject and installs them,
	then executes the given block. Afterwards, uninstalls the wrappers."
	
	self wrapObject: anObject.
	aBlock value.
	self unwrapObject: anObject.