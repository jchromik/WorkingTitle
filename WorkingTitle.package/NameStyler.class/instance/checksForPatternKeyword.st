checks
checksForPatternKeyword

	^ [{
		[ :aString | aString includes: $_] 		-> 'Contains underscore.'.
		[ :aString | aString first isUppercase] 	-> 'Begins with uppercase character.'.
	}] once
