name-testing
isIdiomaticParameterArgName: aString
	"Idioms demand one of the following schemes: aClass, anClass, or anotherClass."

	^ { 'a' . 'an' . 'another' } anySatisfy: [ :prefix |
		(self parameterArgName: aString endsWithClassNameAndBeginsWith: prefix) ] 
	
