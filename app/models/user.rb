class User < ApplicationRecord
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :events, class_name: 'Event', join_table: 'events_users'
  has_many :events

  def name
    return self.email
  end
end
