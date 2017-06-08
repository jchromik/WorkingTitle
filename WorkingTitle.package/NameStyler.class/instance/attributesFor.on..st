style table
attributesFor: aSymbol on: aString

	| baseAttributes additionalAttributes |
	
	baseAttributes := (self attributesFor: aSymbol) ifNil: [ {} ].
	additionalAttributes := self performCheck: (self methodFor: aSymbol) with: aString.

	^ baseAttributes , additionalAttributes