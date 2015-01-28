require 'spec_helper'
require 'net/http'

describe ::ApiCallers::JsonRequest do
  subject { ::ApiCallers::JsonRequest.new('') }

  describe "#clean_response_body" do
    let(:body_response) { 'I\'m the \"Best\"' }

    it "removed \" from the passed text " do
      expect(subject.send(:clean_response_body, body_response)).to eq 'I\'m the Best'
    end

    it "forces the encoding to utf-8" do
      body_response.encode!('windows-1251')
      expect(subject.send(:clean_response_body, body_response).encoding.to_s).to eq 'UTF-8'
    end
  end
end
