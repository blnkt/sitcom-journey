require 'rails_helper'

describe Plot do
  it { should have_and_belong_to_many :scenes}
  it { should validate_presence_of :title }
  it { should validate_presence_of :show_name }
  it { should validate_presence_of :user_id }
end
