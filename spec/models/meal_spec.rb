require 'rails_helper'

RSpec.describe Meal, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:glucoseleve) }

    it { should belong_to(:mealtime) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
