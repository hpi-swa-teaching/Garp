*RE2018-Garp
garpedString
	"Answer the string to be shown in a menu to represent the 
	'locked' status"
	^ (self isGarped
		ifTrue: ['<on>']
		ifFalse: ['<off>']), 'be garped' translated