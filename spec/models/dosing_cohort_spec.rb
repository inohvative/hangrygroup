require 'rails_helper'

RSpec.describe DosingCohort, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:subjects) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
