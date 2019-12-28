require 'rails_helper'

RSpec.describe GlucoseLevel, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:meals) }

    it { should belong_to(:subject) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
