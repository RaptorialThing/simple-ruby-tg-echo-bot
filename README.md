# simple-ruby-tg-echo-bot
## Simple ruby telegram echo bot. Long pooling (No need VPS/VDS, SSL. Can run on local computer)


You need instaled Ruby and bundle on your computer. ([ruby-lang.org](https://www.ruby-lang.org/en/documentation/installation/) 
or install rbenv and use it to install,change ruby versions. Telegram token [telegram.org](https://core.telegram.org/bots#how-do-i-create-a-bot)
Also u need gem [rubygems.org](https://guides.rubygems.org/rubygems-basics/) and bundler (gem install bundle).

```

git clone https://github.com/RaptorialThing/simple-ruby-tg-echo-bot
cd simple-ruby-tg-echo-bot
bundle
ruby bot.rb
```


That is it &#128522;


Now you can send message to bot, created with @BotFather and seen reaction. To stop bot type Ctrl + C or close terminal (if your system Ubuntu)


This solution can be used if this [guide 1](https://github.com/atipugin/telegram-bot-ruby#usage) 
or this [guide 2](https://github.com/telegram-bot-rb/telegram-bot#processing-updates) complex for simple bot or give error
```

undefined method `run' for Telegram::Bot::Client:Class (NoMethodError)
```
