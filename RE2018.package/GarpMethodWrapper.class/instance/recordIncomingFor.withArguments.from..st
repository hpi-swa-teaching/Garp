as yet unclassified
recordIncomingFor: anObject withArguments: anArrayOfObjects from: aSender
	
	GarpStatus value: false during: [
		GarpDiary
			add:
				(GarpReceiveEntry new
					from: aSender
					message: self clientMethod selector
					withArguments: anArrayOfObjects
					to: anObject class asString)
			atLevel:
				GarpNestingLevel value.
	].