wrapping
wrapObject: anObject

	"Creates wrappers for all methods of anObject and installs them"

	| selectors wrappers toInstall |
	selectors := anObject class selectors.
	wrappers := selectors collect: [ :symbol | self on: symbol inClass: anObject class ].
	toInstall := wrappers reject: [ :wrapper | wrapper isInstalled ].
	toInstall do: [ :wrapper | wrapper install; targetObject: anObject ].
	
	ObjectWrappers at: anObject ifAbsentPut: toInstall
	