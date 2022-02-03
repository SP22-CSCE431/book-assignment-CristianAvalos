# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
        title: 'harry potter',
        author: 'jk rowling',
        price: '19.99',
        published_date: '2022-01-10'
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
    subject.title = 'harry potter'
  end
   
  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
    subject.author = 'jk rowling'
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
    subject.price = '19.99'
  end

  it 'is not valid without a published date' do
    subject.published_date = nil
    expect(subject).not_to be_valid
    subject.published_date = '2022-01-10'
  end

end
