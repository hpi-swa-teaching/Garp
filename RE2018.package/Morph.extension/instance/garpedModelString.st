*RE2018-Garp
garpedModelString
	"Answer the string to be shown in a menu to represent the 
	'locked' status"
	^ (self model isGarped
		ifTrue: ['<on>']
		ifFalse: ['<off>']), 'be garped (model)' translated