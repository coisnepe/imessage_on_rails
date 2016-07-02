# == Schema Information
#
# Table name: message_attachment_join
#
#  message_id    :integer
#  attachment_id :integer
#

class MessageAttachment < ApplicationRecord
  self.table_name = 'message_attachment_join'

  belongs_to :message
  belongs_to :attachment
end
