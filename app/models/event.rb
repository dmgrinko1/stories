class Event < ApplicationRecord
  has_and_belongs_to_many :users, class_name: 'User', join_table: 'events_users'
  belongs_to :user

  validates :name, presence: true
end
