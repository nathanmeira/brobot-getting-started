require 'rails_helper'

RSpec.describe Person do 
  let(:name) { 'Jorge' } 
  let(:last_name) { 'Silva' }
  let(:height) { 2.0 }
  let(:weight) { 2.0 }
  subject(:person) { Person.new }
  
  describe "full_name" do
    context "When user has name and last_name" do

      it "Returns full_name" do
        puts name
        puts last_name
        puts person
        p person
        expect(person.full_name).to include("Jorge Silva")
      end
    end
  end

  describe "#imc" do
    context "When user fills height and weight" do


      it "Returns IMC" do
        expect(person.imc).to eq(2.0)
      end
    end
  end
end