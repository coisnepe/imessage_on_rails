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
end
