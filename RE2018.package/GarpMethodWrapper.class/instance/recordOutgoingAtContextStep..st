as yet unclassified
recordOutgoingAtContextStep: aContext

	| arguments argumentsString |
	"if the context is the currently wrapped method
	and the current line is a message send
	record message and receiver"
	(aContext method = self clientMethod and: aContext willSend) ifTrue: [
		"Avoid infinite recursion in case of a self send"
		GarpStatus value: false during: [
			arguments := aContext peekMessageSendArguments.
			arguments isEmpty 
				ifTrue: [ argumentsString := '' ]
				ifFalse: [ argumentsString := ' with arguments ', arguments asString ].

			GarpDiary
				add: 
					'OUT: ', aContext peekMessageSendReceiver,
					'>>', aContext peekMessageSendSelector,
					argumentsString
				atLevel:
					GarpNestingLevel value.
		].
	].