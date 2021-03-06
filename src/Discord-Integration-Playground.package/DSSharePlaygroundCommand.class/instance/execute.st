execute
execute
	| items markdown codeSnippetCmd |
	items := DSSendItems new.
	codeSnippetCmd := DSExtractPlaygroundCodeSnippetCommand new playground: self playground; execute; yourself.
	markdown := codeSnippetCmd markdown.
	codeSnippetCmd hasCodeSnippet ifTrue: [ 
		items userTextMessageItem text: String cr, markdown ].
	self addScreenshotTo: items.
	codeSnippetCmd hasCodeSnippet ifTrue: [ 
		self addSourceCodeTo: items codeSnippet: codeSnippetCmd codeSnippet.
		self addCodeSnippet: codeSnippetCmd codeSnippet to: items ].
	items informationItem addPharoAndOsVersion.
	self initializeAttachmentsItem: items.
	DSSendDialogMorph new
		items: items;
		extent: 400@500;
		openInWindow