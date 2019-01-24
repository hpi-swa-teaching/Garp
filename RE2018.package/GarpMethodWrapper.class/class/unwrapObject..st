unwrapping
unwrapObject: anObject

	"Uninstalls the wrappers for all methods of anObject"

	ObjectWrappers at: anObject ifPresent: [ :wrappers | 
		wrappers do: [ :wrapper | wrapper uninstall ].
		ObjectWrappers removeKey: anObject.
	]