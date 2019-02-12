*RE2018-Garp
peekMessageSendArguments
	
	"assumes the current instruction is a message send, i.e., willSend is true"
	"TODO is it safe that there are always 2 more elements on the stack?"
	| numArguments arguments |
	numArguments := stackp - 2.
	numArguments < 0
		ifTrue: [ ^ Array new: 0. ]
		ifFalse: [
			arguments := Array new: numArguments.
			1 to: (numArguments) do: [ :i | arguments at: i put: (self tempAt: i + 2)].
			^ arguments
		].