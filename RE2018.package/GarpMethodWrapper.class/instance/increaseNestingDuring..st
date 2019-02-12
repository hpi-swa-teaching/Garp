as yet unclassified
increaseNestingDuring: aBlock
	"indentation for pretty-printing entries in the GarpDiary"
	
	GarpNestingLevel value: (GarpNestingLevel value + 1) during: aBlock