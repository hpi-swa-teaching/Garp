as yet unclassified
run

	| server resp |
	
	server := WebServer new listenOn: 8000.
	server passwordAt: 'user' realm: 'test' put: 'pass'.
	server addToken: 'shushitsissupersecret' toRealm: 'test'.
	
	server addService: '/garp' action:[:req | 
		req send200Response: 'ok'
	].

	GarpMethodWrapper wrapClass: WebRequest.
	resp := WebClient httpHead: 'http://localhost:8000/garp'.
	GarpMethodWrapper unwrapClass: WebRequest.

	self assert: resp code = 200.
	self assert: resp content = ''.
	
	server ifNotNil:[server destroy].

	GarpDiary display; clear
	