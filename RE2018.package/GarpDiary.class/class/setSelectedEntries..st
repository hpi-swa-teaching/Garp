as yet unclassified
setSelectedEntries: aCollectionOfEntryNodes

	SelectedEntries do: [ :each | each deselect ].
	SelectedEntries := aCollectionOfEntryNodes.
	SelectedEntries do: [ :each | each select ].
	
	self 
			changed: #roots;
			changed: #getSelectedPath