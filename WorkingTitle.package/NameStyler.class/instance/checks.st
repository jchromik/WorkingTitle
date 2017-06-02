private
checks
	checks := nil.
	^ checks ifNil: [checks := OrderedCollection newFrom: {
			#patternTempVar .
			#patternKeyword .
			#patternArg }]