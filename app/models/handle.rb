# == Schema Information
#
# Table name: handle
#
#  ROWID              :integer          primary key
#  id                 :text             not null
#  country            :text
#  service            :text             not null
#  uncanonicalized_id :text
#

class Handle < ApplicationRecord
  self.table_name = 'handle'

  has_many :chat_handle
  has_many :chat, through: :chat_handle
end
