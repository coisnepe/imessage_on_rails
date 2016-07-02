# == Schema Information
#
# Table name: chat_handle_join
#
#  chat_id   :integer
#  handle_id :integer
#

class ChatHandle < ApplicationRecord
  self.table_name = 'chat_handle_join'

  belongs_to :chat
  belongs_to :handle
end
