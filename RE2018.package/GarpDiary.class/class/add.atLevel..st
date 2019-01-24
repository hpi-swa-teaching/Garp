as yet unclassified
add: anEntry atLevel: aLevel

	| parent entryNode |
	[ (aLevel + 1) < EntryStack size ] whileTrue: [ EntryStack pop ].
	parent := EntryStack top.
	entryNode := GarpEntry new
		parent: parent;
		value: anEntry.
	parent addChild: entryNode.
	EntryStack push: entryNode.
	