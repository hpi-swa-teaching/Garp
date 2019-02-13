as yet unclassified
setSelectedEntry: anEntryNode

	SelectedEntry isNil ifFalse: [ SelectedEntry deselect ].
	SelectedEntry := anEntryNode.
	SelectedEntry isNil ifFalse: [
		SelectedEntry select.
		self 
			changed: #roots;
			changed: #getSelectedEntry]