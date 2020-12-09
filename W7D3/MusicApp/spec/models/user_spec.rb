require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    FactoryBot.build(:user, email: "hello@hello.com", password: "asdfasdf")
  end
  it {should validate_presence_of :email}
  it {should validate_length_of(:password).is_at_least(6)}
  it {should validate_presence_of (:password_digest)}
  it {should validate_presence_of (:session_token)}


  describe "#reset_session_token!" do
    it "sets a new session token on the user" do
      user.valid?
      old_session_token = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(old_session_token)
    end

    it "returns the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end


  describe "#is_password?" do
    
    it "checks if the passwords are the same" do
      expect(user.is_password?("asdfasdf")).to be true
    end
      
    it "checks if a password is incorrect" do
      expect(user.is_password?("wrong_pw")).to be false
    end
    
  end

  describe "::find_by_credentials" do
    before { user.save! }

    it "returns user given valid parameters" do

      expect(User.find_by_credentials("hello@hello.com","asdfasdf")).to eq(user)
    end

    it "returns nil given bad parameters" do

      expect(User.find_by_credentials("hello@hello.com","as")).to eq(nil)
    end
  end

end

