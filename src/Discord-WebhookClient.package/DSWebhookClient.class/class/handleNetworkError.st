examples
handleNetworkError
	<gtExample>
	<label: 'Handle any network error'>

	^ DSWebhookClient new 
		url: 'https://discordapp.com/api/webhooks/WEBHOOK-ID/WEBHOOK-TOKEN';
		message: 'Hello! I am a Bot executed from Pharo';
		ifFail: [ :exception | Transcript show: exception ];
		yourself ";
		send"