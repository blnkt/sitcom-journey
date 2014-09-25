require 'rails_helper'

describe Episode do
  before do
    @scene1 = FactoryGirl.create(:scene)
    @scene2 = FactoryGirl.create(:scene, youtube_id: 'k-QW2YhKq-A')
    @scene3 = FactoryGirl.create(:scene, youtube_id: 'l9fQTQ6z324')
    @scene4 = FactoryGirl.create(:scene, youtube_id: 'enLfYdIlHdU')
    @plot1 = FactoryGirl.create(:plot)
    @plot2 = FactoryGirl.create(:plot, episode: 19)
    @episode = FactoryGirl.create(:episode)
  end

  it { should have_and_belong_to_many :plots}
  it { should belong_to :user}

  it { should validate_presence_of :title }
  it { should validate_presence_of :user_id }

  describe "#scrambler" do
    it "interleaves scenes from two different plots into a new seamless episode" do
      @plot1.scenes << @scene1
      @plot1.scenes << @scene4
      @plot2.scenes << @scene2
      @plot2.scenes << @scene3
      @episode.plots << @plot1
      @episode.plots << @plot2
      expect(@episode.scrambler).to eq([@scene1, @scene2, @scene4, @scene3])
    end
  end

  describe ".all_plot_pairs" do
    it "all " do
      @plot1.scenes << @scene1
      @plot1.scenes << @scene4
      @plot2.scenes << @scene2
      @plot2.scenes << @scene3
      @episode.plots << @plot1
      @episode.plots << @plot2
      expect(Episode.all_plot_pairs.first).to eq([@plot1, @plot2])
    end
  end
end
