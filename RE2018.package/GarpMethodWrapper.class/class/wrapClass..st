wrapping
wrapClass: aClass

	"Creates wrappers for all methods in aClass and installs them"

	| selectors wrappers toInstall |
	selectors := aClass selectors.
	wrappers := (selectors reject: [ :symbol | symbol = #initialize]) collect: [ :symbol | self on: symbol inClass: aClass ].
	toInstall := wrappers reject: [ :wrapper | wrapper isInstalled ].
	toInstall do: [ :wrapper | wrapper install ].
	
	ClassWrappers at: aClass ifAbsentPut: toInstall
	