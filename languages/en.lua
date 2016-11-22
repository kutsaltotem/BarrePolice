return { -- when you're translating, do NOT translate the things in CAPS!
	locale = 'en',
	joinChatMessages = {
		'Welcome, NAME!',
		'Hello, NAME!',
		'Enjoy your stay, NAME!',
		'I\'m glad you joined, NAME!',
		'Howdy, NAME!',
		'Hi, NAME!'
	},
	userAddedBot = 'Hello, World! Thanks for adding me, NAME!',
	leftChatMessages = {
		'RIP NAME.',
		'Rest in peace, NAME!',
		'Boy, I sure hope NAME enjoyed their stay!',
		'Was it something I said, NAME?',
		'But we were just getting to know each other, NAME...',
		'Gosh, NAME - am I really THAT bad?',
		'It\'s your loss, NAME.',
		'Come again soon, NAME!',
		'Bye, NAME!',
		'Goodbye, NAME.',
		'Farewell, NAME.'
	},
	errors = {
		generic = 'I\'m afraid an error has occured!',
		connection = 'I\'m sorry, but there was an error whilst I was processing your request, please try again later.',
		results = 'I\'m sorry, but I couldn\'t find any results for that.',
		argument = 'I\'m sorry, but the arguments you gave were either invalid or non-existent. Please try again',
		syntax = 'Syntax error, please try again.',
		bibleLength = 'The requested passage is too long to post here. Please, try and be more specific.'
	},
	aiError = 'Matt\'s words echoed: NAME, there\'s a time and place for everything, but not now!',
	specifyBlacklistedUser = 'Please specify the user by their numerical ID.',
	userNowBlacklisted = 'That user is now blacklisted from using me.',
	userNowWhitelisted = 'That user is now able to use me again.',
	messageSentToChannel = 'Your message has been sent!',
	unableToSendToChannel = 'Sorry, I was unable to send your message.',
	enterMessageToSendToChannel = 'Please enter a message to send. Markdown formatting is supported.',
	notChannelAdmin = 'Sorry, you do not appear to be an administrator for that group/channel.',
	unableToRetrieveChannelAdmins = 'Sorry, I was unable to retrieve a list of administrators for that group/channel.\n',
	copypastaLength = 'Please respond to a message with less than MAXIMUM characters.',
	copypastaMustContain = 'The replied-to message must contain alpha-numeric characters!',
	foundOnePwnedAccount = 'The given account was found in 1 leak',
	accountFoundMultipleLeaks = 'The given account was found in X leaks',
	officialLinks = 'Here are some official links that you may find useful!',
	helpIntroduction = '*Hello,* NAME*!*\nMy name is MATTATA and I\'m an intelligent bot written with precision. There are many things I can do - try clicking the \'Commands\' button below to see what I can do for you.\n\n*Oh, and I work well in groups, too!*\nYou can enable and disable plugins in your group(s) using COMMANDPREFIXplugins.\nI also feature a multilingual mode (currently in beta), try using COMMANDPREFIXsetlang <language> to adjust your language. That way, when you have a conversation with me, I\'ll make sure to always respond in your language!',
	helpConfused = '*Confused?*\nDon\'t worry, I was programmed to help! Try using COMMANDPREFIXhelp <command> to get help with a specific plugin and its usage.\n\nI\'m also an innovative example of artificial intelligence - yes, that\'s right; I can learn from you! Try speaking to me right here, or mention me by my name in a group. I can also describe images sent in response to messages I send.\n\nYou can also use me inline, try mentioning my username from any group and discover what else I can do!',
	noDocumentedHelp = 'I\'m sorry, but I\'m afraid there is no help documented for that plugin at this moment in time. If you believe this is a mistake, please don\'t hesitate to contact [my developer](https://telegram.me/wrxck).',
	helpAbout = 'I\'m a bot written in Lua, and built to take advantage of the brilliant Bot API which Telegram offers.\n\nMy creator (and primary maintainer) is @wrxck.\nHe believes that anybody who enjoys programming should be able to work with the code of which I was compiled from, so I\'m proud to say that I am an open source project, which you can discover more about on [GitHub](https://github.com/matthewhesketh/mattata).',
	pleaseMessageMe = 'Please [message me in a private chat](http://telegram.me/MATTATA?start=help) to get started.',
	sentPrivateMessage = 'I have sent you a private message containing the requested information.'
}