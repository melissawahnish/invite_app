require 'spec_helper'

describe Event do
  it "has a valid factory" do
    Factory.create(:event).should be_valid
  end
  it "is invalid without a title"
  it "is invalid without a location"
end