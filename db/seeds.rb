# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.find_or_create_by!(email: 'normal_user@example.com') do |user|
  user.password = 'password123'
  user.password_confirmation = 'password123'
end

User.find_or_create_by!(email: 'user_recoverable@example.com') do |user|
  user.password = 'password123'
  user.password_confirmation = 'password123'
  user.reset_password_token = Devise.token_generator.generate(User, :reset_password_token).first
  user.reset_password_sent_at = Time.now
end

User.find_or_create_by!(email: 'user_rememberable@example.com') do |user|
  user.password = 'password123'
  user.password_confirmation = 'password123'
  user.remember_created_at = Time.now
end

User.find_or_create_by!(email: 'user_recent@example.com') do |user|
  user.password = 'password123'
  user.password_confirmation = 'password123'
  user.created_at = Time.now
end
