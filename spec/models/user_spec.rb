require 'rails_helper'

describe User, type: :model do
  it 'is valid with valid attributes' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'is invalid without an email' do
    user = build(:user, email: nil)
    expect(user).not_to be_valid
  end

  it 'is invalid without a password' do
    user = build(:user, password: nil)
    expect(user).not_to be_valid
  end

  it 'is invalid when password and password_confirmation do not match' do
    user = build(:user, password_confirmation: 'differentpassword')
    expect(user).not_to be_valid
  end
end
