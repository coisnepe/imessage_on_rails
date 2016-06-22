# == Schema Information
#
# Table name: message
#
#  ROWID                 :integer          primary key
#  guid                  :text             not null
#  text                  :text
#  replace               :integer          default(0)
#  service_center        :text
#  handle_id             :integer          default(0)
#  subject               :text
#  country               :text
#  attributedBody        :binary
#  version               :integer          default(0)
#  type                  :integer          default(0)
#  service               :text
#  account               :text
#  account_guid          :text
#  error                 :integer          default(0)
#  date                  :integer
#  date_read             :integer
#  date_delivered        :integer
#  is_delivered          :integer          default(0)
#  is_finished           :integer          default(0)
#  is_emote              :integer          default(0)
#  is_from_me            :integer          default(0)
#  is_empty              :integer          default(0)
#  is_delayed            :integer          default(0)
#  is_auto_reply         :integer          default(0)
#  is_prepared           :integer          default(0)
#  is_read               :integer          default(0)
#  is_system_message     :integer          default(0)
#  is_sent               :integer          default(0)
#  has_dd_results        :integer          default(0)
#  is_service_message    :integer          default(0)
#  is_forward            :integer          default(0)
#  was_downgraded        :integer          default(0)
#  is_archive            :integer          default(0)
#  cache_has_attachments :integer          default(0)
#  cache_roomnames       :text
#  was_data_detected     :integer          default(0)
#  was_deduplicated      :integer          default(0)
#  is_audio_message      :integer          default(0)
#  is_played             :integer          default(0)
#  date_played           :integer
#  item_type             :integer          default(0)
#  other_handle          :integer          default(-1)
#  group_title           :text
#  group_action_type     :integer          default(0)
#  share_status          :integer
#  share_direction       :integer
#  is_expirable          :integer          default(0)
#  expire_state          :integer          default(0)
#  message_action_type   :integer          default(0)
#  message_source        :integer          default(0)
#

class Message < ActiveRecord::Base
  self.table_name = 'message'
  self.inheritance_column = 'message_type' # "type" is a reserved column name

  has_many :chat_message
  has_many :chat, through: :chat_message

  has_many :message_attachment
  has_many :attachment, through: :message_attachment
end
