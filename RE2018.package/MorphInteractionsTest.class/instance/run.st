as yet unclassified
run

	| aMorph canvas |
	GarpMethodWrapper wrapClass: Canvas.
	canvas := self currentWorld canvas.
	"canvas garp."
	aMorph := TestMorph new.
	aMorph openInWorld.
	(GarpMethodWrapper future: 200) unwrapClass: Canvas.
	"(canvas future: 200) ungarp."
	(aMorph future: 200) delete.
	(GarpDiary future: 250) display.
