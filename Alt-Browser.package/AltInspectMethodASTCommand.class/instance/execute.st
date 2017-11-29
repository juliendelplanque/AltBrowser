execution
execute
	| ast |
	ast := RBParser
		parseMethod: requestor selectedNode sourceCode
		onError: [ :msg :pos | ^ self ].
	ast doSemanticAnalysisIn: requestor selectedNode sourceClass.
	ast inspect