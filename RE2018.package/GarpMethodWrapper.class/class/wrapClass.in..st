wrapping
wrapClass: aClass in: aBlock

	"Creates wrappers for all methods in aClass and installs them,
	then executes the given block. Afterwards, uninstalls the wrappers."
	
	self wrapClass: aClass.
	aBlock value.
	self unwrapClass: aClass.