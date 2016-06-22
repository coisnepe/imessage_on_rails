##imessage_on_rails

A super simple Rails app to play with OSX's Messages database

To get your database (better not work with the actual imessage db!), run:

```
$ cp ~/Library/Messages/chat.db path/to/imessage_on_rails/db/chat.sqlite3
```

This shouldn't take more than a few seconds...

Right now I'm basically only using ActiveRecord, so `rails c` will get you going.

A graphical interface would be neat, so feel free to fork and submit pull requests.
