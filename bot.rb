require 'telegram/bot'

token = '' # @BotFather give this

Telegram.bots_config = {
  default: token,
  chat: {
    token: token,
    username: 'ChatBot', # to support commands with mentions (/help@ChatBot)
  },
}

updates = Telegram.bot.get_updates(offset: -1)
update_id = updates["result"][-1]["update_id"]

while TRUE do
    updates = Telegram.bot.get_updates(offset: update_id)
    Telegram.bot == Telegram.bots[:default] # true
    sleep 2
    updates["result"].each do |update|
        # Если в обновлении есть ID больше чем ID последнего сообщения, значит пришло новое сообщение (c) Ramis Ramziv
        if update_id < update["update_id"]      
            update_id = update["update_id"]
            Telegram.bots[:chat].send_message(chat_id: update["message"]["from"]["id"], text: "Hello, " + update["message"]["text"])
        end
    end
end
