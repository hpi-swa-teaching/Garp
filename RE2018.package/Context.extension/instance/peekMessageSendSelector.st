*RE2018-Garp
peekMessageSendSelector
	
	"assumes the current instruction is a message send, i.e., willSend is true"
	 ^ self selectorToSendOrSelf 