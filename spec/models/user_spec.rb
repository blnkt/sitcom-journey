require 'rails_helper'

describe User do

  it { should have_many :plots}
  it { should have_many :episodes}
  it { should have_many :scenes}

end
