# == Schema Information
#
# Table name: attachment
#
#  ROWID          :integer          primary key
#  guid           :text             not null
#  created_date   :integer          default(0)
#  start_date     :integer          default(0)
#  filename       :text
#  uti            :text
#  mime_type      :text
#  transfer_state :integer          default(0)
#  is_outgoing    :integer          default(0)
#  user_info      :binary
#  transfer_name  :text
#  total_bytes    :integer          default(0)
#

class Attachment < ApplicationRecord
  self.table_name = 'attachment'

  has_many :message_attachment
  has_many :message, through: :message_attachment
end
