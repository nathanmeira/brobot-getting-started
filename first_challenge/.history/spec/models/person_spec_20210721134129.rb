require 'rails_helper'

RSpec.describe Person do 
  subject(:person) { Person.new }
  
  describe "full_name" do
    context "When user has name and last_name" do
      let(:name) { 'Jorge' } 
      let(:last_name) { 'Silva' }

      it "Returns full_name" do
        expect(person.full_name).to include("Jorge Silva")
      end
    end
  end

  describe "#imc" do
    context "When user fills height and weight" do
      let(:height) { 2.0 }
      let(:weight) { 2.0 }

      it "Returns IMC" do
        expect(person.imc).to eq(2)
      end
    end
  end
end