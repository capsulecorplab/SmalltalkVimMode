commands
charModeLineBeginStopIndex
	| index str |
	str   := editor string.
 "index := str lastIndexOf: (Character cr) startingAt: (self pointIndex) ifAbsent: 1."
 index := self lastEndOfLineIndex: editor pointIndex.
	^ index