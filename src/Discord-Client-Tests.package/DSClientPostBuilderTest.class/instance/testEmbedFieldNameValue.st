test - protocol - embed
testEmbedFieldNameValue
	builder := self newInstanceToBeTested 
		embedFieldName: self anyString value: self anyStringTwo;
		yourself.
	self assert: builder post embed fields size equals: 1.
	self assert: builder post embed fields first name equals: self anyString.
	self assert: builder post embed fields first value equals: self anyStringTwo.
	self deny: builder post embed fields first isInline.