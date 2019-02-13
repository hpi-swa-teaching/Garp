as yet unclassified
add: anEntry atLevel: aLevel

	| parent |
	[ (aLevel + 1) < EntryStack size ] whileTrue: [ EntryStack pop ].
	parent := EntryStack top.
	anEntry parent: parent.
	parent addChild: anEntry.
	EntryStack push: anEntry.
	