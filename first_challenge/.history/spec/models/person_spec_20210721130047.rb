require 'rails_helper'

RSpec.describe Person do 
  subject(:person) { described_class.new }
  let(:height) {  }
  let(:weight) {  }
  describe "full_name" do
    context "When user has name and last_name" do
      let(:name) { 'Jorge' } 
      let(:last_name) { 'Silva' } 
      it "Re" do
      end
    end
  end

  describe "#imc" do
    context "When user fills height and weight" do
      it "description" do
      end
    end
  end
end