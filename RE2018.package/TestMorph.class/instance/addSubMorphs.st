as yet unclassified
addSubMorphs
	
	0 to: 400 by: 100 do: [
		:pos | self addMorph: (
			CircleMorph new
				extent: 100 @ 100; 
				position: self position + (pos @ pos)
			)		
	]
