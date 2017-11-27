as yet unclassified
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Trace Viewer 2')
			parent: #Tools;
			action: [ self open ]; 
			help: 'View / Explore / Reset traces'.