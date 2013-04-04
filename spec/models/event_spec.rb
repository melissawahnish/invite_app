require 'spec_helper'

describe Event do
  it "has a valid factory" do
    Factory.create(:event).should be_valid
  end
  it "is invalid without a title" do
  Factory.build(:event, title: nil).should_not be_valid
  end
  it "is invalid without a location" do
  Factory.build(:event, location: nil).should_not be_valid
  end
end