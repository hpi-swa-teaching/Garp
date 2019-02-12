as yet unclassified
valueWithReceiver: anObject arguments: anArrayOfObjects

	| sender |
	"store the actual messages sender here, before we delve into block madness below"
	sender := thisContext sender sender.
	
	"tree nesting for tree structure of entries in the GarpDiary"
	self increaseNestingDuring: [
		(self shouldWrap: anObject) ifTrue: [
			
			"record incoming messages that activate the wrapped method"
			self recordIncomingFor: anObject withArguments: anArrayOfObjects from: sender.
			
			"simulate the wrapped method, recording message sends"
			self increaseNestingDuring: [
				thisContext runSimulated: [
					self clientMethod valueWithReceiver: anObject arguments: anArrayOfObjects.
				] contextAtEachStep: [
					:context | self recordOutgoingAtContextStep: context.
				].	
			].
		].
	
		"actually execute the target method now"
		^ self clientMethod valueWithReceiver: anObject arguments: anArrayOfObjects
	]