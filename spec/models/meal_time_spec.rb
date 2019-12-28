require 'rails_helper'

RSpec.describe MealTime, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:meals) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
