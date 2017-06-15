checks
checksForPatternArg

	^ [{
		[ :aString | (self isIdiomaticParameterArgName: aString) not]	-> 'Does not suggest type.'.
	}] once
