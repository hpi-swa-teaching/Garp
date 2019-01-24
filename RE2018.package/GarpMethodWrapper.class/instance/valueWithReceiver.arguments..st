as yet unclassified
valueWithReceiver: anObject arguments: anArrayOfObjects
	
	| result |
	
	"indentation for pretty-printing entries in the GarpDiary"
	self class increaseNesting.
	(self shouldWrap: anObject) ifTrue: [
		"record incoming messages that activate the wrapped method"
		Transcript show: self clientMethod.
		self recordIncomingFor: anObject withArguments: anArrayOfObjects from: thisContext sender sender.
		"simulate the wrapped method, recording message sends"
		thisContext runSimulated: [
			self clientMethod valueWithReceiver: anObject arguments: anArrayOfObjects.
		] contextAtEachStep: [
			:context | self recordOutgoingAtContextStep: context.
		].
	].
	
	"actually execute the target method now"
	result := self clientMethod valueWithReceiver: anObject arguments: anArrayOfObjects.
	self class decreaseNesting.
	^ result