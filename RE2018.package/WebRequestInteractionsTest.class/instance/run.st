as yet unclassified
run

	| server resp |
	
	[server := WebServer new listenOn: 8000.
	"server passwordAt: 'user' realm: 'test' put: 'pass'.
	server addToken: 'shushitsissupersecret' toRealm: 'test'."
	
	server addService: '/garp' action:[:req | 
		req send200Response: 'ok'
	].

	GarpMethodWrapper wrapClass: WebRequest.
	resp := WebClient httpGet: 'http://localhost:8000/garp'.
	GarpMethodWrapper unwrapClass: WebRequest.

	self assert: resp code = 200.
	self assert: resp content = 'ok'.] 
		ensure: [server ifNotNil:[server destroy]].

	GarpDiary display.
	