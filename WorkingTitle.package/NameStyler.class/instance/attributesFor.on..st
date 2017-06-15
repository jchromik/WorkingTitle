style table
attributesFor: aSymbol on: aString

	| baseAttributes additionalAttributes |
	
	baseAttributes := (self attributesFor: aSymbol) ifNil: [ {} ].
	additionalAttributes := self performChecksForType: aSymbol on: aString.

	^ baseAttributes , additionalAttributes 