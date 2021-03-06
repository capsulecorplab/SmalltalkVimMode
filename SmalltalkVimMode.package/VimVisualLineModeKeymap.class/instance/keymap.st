abstract
keymap
	| assocs cmdMap |
	cmdMap := Dictionary new.
		0 to: 255 do: [ :i |
		   cmdMap at: (Character value: i) put: #noop: ].
	assocs := {  
 "Navigation keys"
	  ($h -> #noop:).
	  ($l -> #noop:).
	  ($j -> #lineModeMarkDown:).
	  ($k -> #lineModeMarkUp:).
	  ($g -> #lineModeMarkBufferBegin:).
	  ($G -> #lineModeMarkBufferEnd:).  


	"Delete text" 
	  ($x -> #cut:).
	  ($d -> #cut:). 
	"Simple replace text" 
	  ($r -> #replaceCharacter:).  

	"Copy/Paste text"
   ($y -> #copySelectedLines:).
	  ($p -> #pasteText:). 

   ($/ -> #comment:).

 "Undo/Redo operation"
	  ($u -> #undo:).
	  ((Character value: 18) -> #redoChanges). 
	 	 }.
	assocs do: [ :assoc |
		   cmdMap at: assoc key put: assoc value ].
	^ cmdMap
