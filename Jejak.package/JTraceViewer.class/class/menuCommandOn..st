class initialization
menuCommandOn: aBuilder 
	<worldMenu> 
	(aBuilder item: #'Jejak Trace Viewer')
			parent: #Tools;
			action: [ self open ]; 
			help: 'View / Explore / Reset traces'.