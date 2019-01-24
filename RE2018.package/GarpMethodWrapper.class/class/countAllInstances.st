stats
countAllInstances
	"doIt: [self countAllInstances]"

	| totalCount |
	totalCount := 0.
	Smalltalk garbageCollect.
	self withAllSubclassesDo: [:each |
		| count |
		count := each allInstances size.
		totalCount := totalCount + count ].
	^totalCount