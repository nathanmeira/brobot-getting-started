require 'rails_helper'

RSpec.describe Person do 
  subject(:person) { described_class.new }
  
  describe "full_name" do
    context "When user has name and last_name" do
      let(:name) { 'Jorge' } 
      let(:last_name) { 'silva' }

      it "Returns full_name" do
        expect(person.full_name).to eq("Jorge Silva")
      end
    end
  end

  describe "#imc" do
    context "When user fills height and weight" do
      let(:height) { 2 }
      let(:weight) { 2 }

      it "Returns IMC" do
        expect(person.full_name).to eq(2)
      end
    end
  end
end