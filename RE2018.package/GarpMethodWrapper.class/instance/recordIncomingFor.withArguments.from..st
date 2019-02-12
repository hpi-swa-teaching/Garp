as yet unclassified
recordIncomingFor: anObject withArguments: anArrayOfObjects from: aSender
	
	| argumentsString |
	
	GarpStatus value: false during: [
		anArrayOfObjects isEmpty 
			ifTrue: [ argumentsString := '' ]
			ifFalse: [ argumentsString := ' with arguments ', anArrayOfObjects asString ].
		GarpDiary
			add:
				'IN: from ', aSender,
				' message ', anObject class, '>>', self clientMethod selector, 				argumentsString
			atLevel:
				GarpNestingLevel value.
	].