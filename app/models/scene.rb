class Scene < ActiveRecord::Base
  validates_presence_of :address
  validates_presence_of :start
  validates_presence_of :end
  validates_presence_of :user_id

  has_and_belongs_to_many :plots
end
