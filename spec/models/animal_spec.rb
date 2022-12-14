require 'rails_helper'

RSpec.describe Animal, type: :model do
  it 'throws error if fields are empty' do
    beast = Animal.create common_name: nil, scientific_binomial: nil
    expect(beast.errors[:common_name]).to_not be_empty
    expect(beast.errors[:scientific_binomial]).to_not be_empty
  end
  it 'throws an error if fields are not unique' do
    Animal.create common_name: 'cat', scientific_binomial: 'felis domestica'
    cat = Animal.create common_name: 'cat', scientific_binomial: 'felis domestica'
    expect(cat.errors[:common_name]).to_not be_empty
    expect(cat.errors[:scientific_binomial]).to_not be_empty
  end
  it 'throws an error if both fields are exactly the same' do 
    cat = Animal.create common_name: 'cat', scientific_binomial: 'cat'
    expect(cat.errors[:common_name]).to_not be_empty
    end
end
