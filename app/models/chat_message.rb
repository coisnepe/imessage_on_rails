# == Schema Information
#
# Table name: chat_message_join
#
#  chat_id    :integer
#  message_id :integer
#

class ChatMessage < ActiveRecord::Base
  self.table_name = 'chat_message_join'

  belongs_to :chat
  belongs_to :message

  def self.count_messages_for_recipient(recipient)
    chat_ids = Chat.fuzzy_search(recipient)
    where(chat_id: chat_ids).count
  end
end

# rowid = Chat.where("guid LIKE '%eugenie%' OR guid like '%057483%'").pluck(:ROWID)
# ChatMessage.where(chat_id: rowid).count
