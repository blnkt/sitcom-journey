require 'rails_helper'

@@scene = FactoryGirl.create(:scene)

describe Scene do
  it { should have_and_belong_to_many :plots}

  it { should validate_presence_of :start_time }
  it { should validate_presence_of :end_time }
  it { should validate_presence_of :youtube_id }

  describe "#to_seconds" do
    it "convert start and end times to seconds on Scene's creation" do
      expect(@@scene.start_time).to eq(176)
    end
  end

  describe "#clip" do
    it "synthesize youtube embed url from youtube_id, start, and end" do
      expect(@@scene.clip).to eq("http://www.youtube.com/embed/#{@@scene.youtube_id}?start=#{@@scene.start_time}&end=#{@@scene.end_time}&autoplay=1&enablejsapi=1")
    end
  end
end
