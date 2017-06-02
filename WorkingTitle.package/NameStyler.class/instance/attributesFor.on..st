style table
attributesFor: aSymbol on: aString
	| attributes baseAttributes | 
	attributes := OrderedCollection new.
	baseAttributes := self attributesFor: aSymbol.
	baseAttributes ifNotNil: [
		attributes addAll: baseAttributes ].
	attributes addAll: (self performCheck: aSymbol with: aString).
	 ^ attributes asArray