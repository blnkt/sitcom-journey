class Episode < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :user_id

  has_and_belongs_to_many :plots
  belongs_to :user
end
