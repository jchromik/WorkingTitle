as yet unclassified
blockDict
	blockDict := nil.
	^ blockDict ifNil: [blockDict := Dictionary newFrom: {
			#patternTempVar ->#checkTempVar: .
			#patternKeyword -> #checkMethodName: .
			#patternArg -> #checkParameterName: }]