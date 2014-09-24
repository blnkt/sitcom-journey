require 'rails_helper'

describe Episode do
  it { should have_and_belong_to_many :plots}
  it { should belong_to :user}

  it { should validate_presence_of :title }
  it { should validate_presence_of :user_id }
end
