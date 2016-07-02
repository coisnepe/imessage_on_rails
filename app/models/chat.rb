# == Schema Information
#
# Table name: chat
#
#  ROWID                 :integer          primary key
#  guid                  :text             not null
#  style                 :integer
#  state                 :integer
#  account_id            :text
#  properties            :binary
#  chat_identifier       :text
#  service_name          :text
#  room_name             :text
#  account_login         :text
#  is_archived           :integer          default(0)
#  last_addressed_handle :text
#  display_name          :text
#  group_id              :text
#  is_filtered           :integer          default(0)
#  successful_query      :integer          default(1)
#

class Chat < ActiveRecord::Base
  self.table_name = 'chat'

  has_many :chat_message
  has_many :message, through: :chat_message

  has_many :chat_handle
  has_many :handle, through: :chat_handle

  def sanitized_guid
    guid.sub(/\w+;.;/, '')
  end

  def self.fuzzy_search(params)
    results = []
    params.each { |param| results << where("guid LIKE '%#{param}%'") }
    results.flatten.pluck(:ROWID)
  end
end
