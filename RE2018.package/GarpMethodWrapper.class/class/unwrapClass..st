unwrapping
unwrapClass: aClass

	"Uninstalls the wrappers for all methods in aClass"

	ClassWrappers at: aClass ifPresent: [ :wrappers | 
		wrappers do: [ :wrapper | wrapper uninstall ].
		ClassWrappers removeKey: aClass.
	]