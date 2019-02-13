as yet unclassified
recordOutgoingAtContextStep: aContext

	"if the context is the currently wrapped method
	and the current line is a message send
	record message and receiver"
	(aContext method = self clientMethod and: aContext willSend) ifTrue: [
		"Avoid infinite recursion in case of a self send"
		GarpStatus value: false during: [
			GarpDiary
				add:
					(GarpSendEntry new
						to: aContext peekMessageSendReceiver
						message: aContext peekMessageSendSelector
						withArguments: aContext peekMessageSendArguments)
				atLevel:
					GarpNestingLevel value.
		].
	].