require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it 'throws error if fields are empty' do
    tracked = Sighting.create latitude: nil, longitude: nil, date: nil
    expect(tracked.errors[:latitude]).to_not be_empty
    expect(tracked.errors[:longitude]).to_not be_empty
    expect(tracked.errors[:date]).to_not be_empty
  end
end
