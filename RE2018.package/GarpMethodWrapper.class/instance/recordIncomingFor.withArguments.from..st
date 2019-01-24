as yet unclassified
recordIncomingFor: anObject withArguments: anArrayOfObjects from: aSender
	
	| argumentsString |
	
	GarpStatus value: false during: [
		anArrayOfObjects isEmpty 
			ifTrue: [ argumentsString := '' ]
			ifFalse: [ argumentsString := ' with arguments ', anArrayOfObjects asString ].
		garpsDiary add: 
			self currentIndent,
			'IN: to ', anObject class,
			' >> ', self clientMethod selector,
			argumentsString,
			' from ', aSender.
	].