displaying
display

	| windowSpec listSpec builder |
	builder := ToolBuilder default.
	windowSpec := builder pluggableWindowSpec new.
	windowSpec label: 'GarpDiary'; children: OrderedCollection new.
	listSpec := builder pluggableListSpec new.
	listSpec frame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@0 corner: 0@0)).
	listSpec model: self; list: #list.
	windowSpec children add: listSpec.
	windowSpec extent: 300@300.
	(builder build: windowSpec) openInWorld.