as yet unclassified
for: aString

	^ self evalBlock: [ | balloon |
		balloon := (NewBalloonMorph string: aString for: self currentWorld).
		balloon popUpForHand: self currentHand ].