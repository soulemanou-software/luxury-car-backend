require 'rails_helper'

RSpec.describe 'Cars', type: :model do
  subject { Car.new(name: 'Lexus', brand: 'toyota', image: 'wwww.sample-image.com', lending_fee: 20.0, description: 'a smart and durable car') }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'brand should be present' do
    subject.brand = nil
    expect(subject).to_not be_valid
  end

  it 'image link should be present' do
    subject.image = nil
    expect(subject).to_not be_valid
  end

  it 'lending fee should be present' do
    subject.lending_fee = nil
    expect(subject).to_not be_valid
  end

  it 'description should be present' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'name should not be too short' do
    subject.name = 'a'
    expect(subject).to_not be_valid
  end

  it 'name should not be too long' do
    subject.name = 'a' * 30
    expect(subject).to_not be_valid
  end

  it 'brand name should not be too short' do
    subject.brand = 'a'
    expect(subject).to_not be_valid
  end

  it 'brand name should not be too long' do
    subject.brand = 'a' * 25
    expect(subject).to_not be_valid
  end

  it 'description should not be too short' do
    subject.description = 'a'
    expect(subject).to_not be_valid
  end

  it 'description should not be too long' do
    subject.description = 'a' * 300
    expect(subject).to_not be_valid
  end

  it 'appartment fee should allow valid values' do
    subject.lending_fee = 100.0
    expect(subject).to_not be_valid
  end
end
