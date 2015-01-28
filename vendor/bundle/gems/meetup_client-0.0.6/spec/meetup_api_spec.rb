require 'spec_helper'


describe MeetupApi do
  describe "#query_string" do
    subject { MeetupApi.new }
    it "returns a valid query string" do
      params = { category: '1',
                 status: 'upcoming',
                 time: '0,1m' }
      expect(subject.send(:query_string, params)).to eq 'category=1&status=upcoming&time=0,1m'
    end
  end
end
