name-testing
parameterArgName: aString endsWithClassNameAndBeginsWith: anotherString

	^ (aString beginsWith: anotherString) and:
		[aString size > anotherString size] and:
			[Environment current hasClassNamed: (aString copyFrom: anotherString size + 1 to: aString size)]

	
