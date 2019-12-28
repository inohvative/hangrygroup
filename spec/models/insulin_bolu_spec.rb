require 'rails_helper'

RSpec.describe InsulinBolu, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:subject) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
