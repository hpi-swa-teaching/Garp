as yet unclassified
contactGarp
	
	| garp garp2 oldValue newValue |
	
	garp := Garp new.
	garp2 := Garp new.
	"GarpMethodWrapper wrapClass: Garp."
	garp garp.
	"GarpMethodWrapper wrapObject: garp."
	oldValue := garp value.
	garp2 value.
	newValue := 10.
	garp value: newValue.
	garp2 value: newValue.
	garp contactThird.
	garp2 contactThird.
	"GarpMethodWrapper unwrapClass: Garp."
	garp ungarp.
	"GarpMethodWrapper unwrapObject: garp."
	GarpDiary display; clear.