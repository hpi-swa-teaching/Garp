as yet unclassified
display

	| windowSpec treeSpec builder |
	builder := ToolBuilder default.
	windowSpec := builder pluggableWindowSpec new.
	windowSpec label: 'GarpDiary'; children: OrderedCollection new.
	treeSpec := builder pluggableTreeSpec new.
	treeSpec frame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@0 corner: 0@0)).
	treeSpec 
		model: self; 
		roots: #roots;
		getChildren: #childrenOf:;
		hasChildren: #hasChildren:;
		label: #valueOf:.
	windowSpec children add: treeSpec.
	windowSpec extent: 300@300.
	(builder build: windowSpec) openInWorld.