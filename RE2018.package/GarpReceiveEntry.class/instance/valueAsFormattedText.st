displaying
valueAsFormattedText 

	| argumentsString |
	
	^ selected ifTrue: [
		arguments isEmpty
			ifTrue: [ argumentsString := '' ]
			ifFalse: [ argumentsString := ' | args: ', arguments ].

		^ 'IN: ', receiver, '>>', message, ' (from: ', from, argumentsString, ')'.
	] ifFalse: [
		^ 'IN: ', message
	]