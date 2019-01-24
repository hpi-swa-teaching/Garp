as yet unclassified
currentIndent

	^ ((1 to: self class nestingLevel) collect: [:x | '    '.]) joinSeparatedBy: ''.
