as yet unclassified
shouldWrap: anObject

	^ ((targetObject isNil or: targetObject == anObject) and: GarpStatus value = true)