require 'rails_helper'

RSpec.describe Venue, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:neighborhood) }

    it { should have_many(:top_picks) }

    end

    describe "InDirect Associations" do

    it { should have_many(:dishes) }

    it { should have_many(:cuisines) }

    end

    describe "Validations" do
      
    end
end
