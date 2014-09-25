require 'rails_helper'

describe Plot do
  before do
    @scene1 = FactoryGirl.create(:scene)
    @scene2 = FactoryGirl.create(:scene, youtube_id: 'k-QW2YhKq-A')
    @scene3 = FactoryGirl.create(:scene, youtube_id: 'l9fQTQ6z324')
    @scene4 = FactoryGirl.create(:scene, youtube_id: 'enLfYdIlHdU')
    @plot1 = FactoryGirl.create(:plot)
    @plot2 = FactoryGirl.create(:plot, episode: 19)
    @episode = FactoryGirl.create(:episode)
  end

  it { should have_and_belong_to_many :scenes}
  it { should belong_to :user}

  it { should validate_presence_of :title }
  it { should validate_presence_of :show_name }
  it { should validate_presence_of :user_id }

  describe ".random_pair" do
    it "all " do
      @plot1.scenes << @scene1
      @plot1.scenes << @scene4
      @plot2.scenes << @scene2
      @plot2.scenes << @scene3
      @episode.plots << @plot1
      @episode.plots << @plot2
      expect(Plot.random_pair).to eq([@plot1, @plot2])
    end
  end
end
