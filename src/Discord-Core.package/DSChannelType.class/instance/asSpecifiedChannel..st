converting
asSpecifiedChannel: aDSUnspecifiedChannel 
	"Convert an unspecified channel to a specific one, e.g., text channel, voice channel."
	<return: #DSChannel>
	^ self subclassResponsibility