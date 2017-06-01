as yet unclassified
attributesFor: aSymbol on: aString
	| attributes baseAttributes | 
	attributes := OrderedCollection new.
	baseAttributes := self attributesFor: aSymbol.
	baseAttributes ifNotNil: [
		attributes addAll: baseAttributes ].
	self blockDict at: aSymbol ifPresent: [ :aMethodSymbol |
		attributes addAll: (self perform: aMethodSymbol with: aString) ].
	 ^ attributes asArray