as yet unclassified
install

	| rootEntry |
	rootEntry := GarpEntry new
		parent: nil;
		value: 'root'.
	Root := rootEntry.
	EntryStack := Stack new.
	EntryStack push: rootEntry.
	SelectedEntry := nil.
	SelectedEntries := OrderedCollection new.