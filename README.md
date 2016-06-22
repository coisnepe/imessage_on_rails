##imessage_on_rails

A super simple Rails app to play with OSX's Messages database

To get your database (better not work with the actual imessage db!), run:

```
$ cp ~/Library/Messages/chat.db path/to/imessage_on_rails/db/chat.sqlite3
```

This shouldn't take more than a few seconds...

Right now I'm basically only using ActiveRecord, so `rails c` will get you going.

The models are as follows:
- Chat: a conversation
- Message
- Attachment
- Handle: a person

The joins are functional, giving you queries such as `Chat.where(chat_identifier: "johndoe@icloud.com").message`

To compensate for the lack of GUI, unleash the power of _awsome_print_ and make the query results easier on the eyes by prefixing your commands with `ap`

A graphical interface would be neat, so feel free to fork and submit pull requests.
