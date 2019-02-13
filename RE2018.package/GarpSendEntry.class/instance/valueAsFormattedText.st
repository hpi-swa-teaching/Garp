displaying
valueAsFormattedText 

	| argumentsString |
	
	^ selected ifTrue: [
		arguments isEmpty
			ifTrue: [ argumentsString := '' ]
			ifFalse: [ argumentsString := ' (args: ', arguments, ')' ].

		^ 'OUT: ', receiver, '>>', message, argumentsString
	] ifFalse: [
		^ 'OUT: ', message
	].
	
	