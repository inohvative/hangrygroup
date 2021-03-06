require 'rails_helper'

RSpec.describe Subject, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:glucose_levels) }

    it { should have_many(:insulin_bolus) }

    it { should belong_to(:cohort) }

    end

    describe "InDirect Associations" do

    it { should have_many(:meals) }

    end

    describe "Validations" do
      
    end
end
