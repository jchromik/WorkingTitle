checks
checkPatternArg: aString

	| violations |
	violations := OrderedCollection new.

	(aString first = $a) ifFalse: [ violations add: 'Does not suggest type.' ].
	(aString includes: $_) ifTrue: [ violations add: 'Do not use underscores!' ].
	
	^ violations
		ifEmpty: [ {} ]
		ifNotEmpty: [ { NamingToolTip for: (violations joinSeparatedBy: Character cr) . TextColor red } ].