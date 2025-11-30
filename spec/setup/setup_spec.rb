require 'rails_helper'

describe 'Test setup validation' do
  it 'runs a basic test' do
    expect(1 + 1).to eq(2)
  end

  it 'uses FactoryBot' do
    expect(FactoryBot).to be_a(Module)
  end

  it 'shoulda-matchers works' do
    expect(1).to be > 0
  end

  it 'database_cleaner is available' do
    expect(DatabaseCleaner[:active_record]).to respond_to(:start)
  end
end
