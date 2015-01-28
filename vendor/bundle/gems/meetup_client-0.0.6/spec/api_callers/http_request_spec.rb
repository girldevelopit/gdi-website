require 'spec_helper'
require 'net/http'

describe ::ApiCallers::HttpRequest do
  subject { ::ApiCallers::HttpRequest.new('') }

  describe "#headers" do
    it "returns { 'Accept-Charset' => 'utf-8' }" do
      expect(subject.send(:headers)).to eq({ 'Accept-Charset' => 'UTF-8' })
    end
  end

  describe "#class_to_call" do
    it "returns Net::HTTP::Get by default" do
      expect(subject.send(:class_to_call)).to eq Net::HTTP::Get
    end

    it "returns the class to call based on the request method, whether it is 'get', 'post', or 'delete'" do
      json_request = ::ApiCallers::JsonRequest.new('', 'post')
      expect(json_request.send(:class_to_call)).to eq Net::HTTP::Post
    end
  end
end
