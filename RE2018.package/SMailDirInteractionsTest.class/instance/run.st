as yet unclassified
run

	| test |
	test := MDMessageBoxTest new.
	test setUp.
	test testGarpingWithMailBoxSynchronization.
	test tearDown.
	GarpDiary display.
	