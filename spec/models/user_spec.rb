require 'rails_helper'

describe User, type: :model do
    let(:user) { User.new(username: "genericuser", email: "genericuser@gmail.com", password: "asdf1234", password_confirmation: "asdf1234")  }

  describe "associations"

  describe "validations" do
    context "with all fields input and valid" do
      it { expect(user).to be_valid }
    end
    context "with a password and password confirmation mismatch" do
      before(:each) { user.password_confirmation = "aaaaaaaaaaa" }
      it { expect(user).not_to be_valid }
    end
    context "without a password" do
      before(:each) { user.password = nil }
      it { expect(user).not_to be_valid }
    end
    context "without an email" do
      before(:each) { user.email = nil }
      it { expect(user).not_to be_valid }
    end
    context "with an invalid email" do
      before(:each) {user.email = "string"}
      it { expect(user).not_to be_valid }
    end
    # context "testing before each" do
    #   before(:each) { 20.times {Idea.create(title: "HMMMM", body: "WHOAAAA", user_id: 8) } }
    #   it { p Idea.count }
    #   it { p Idea.count }
    #   it { p Idea.count }
    # end
    #   context "without a password confirmation" do
    #     before(:each) { user.password_confirmation = nil }
    #     it { expect(user).not_to be_valid }
    #   end
    # end
  end



  # describe "#idea_count" do
  #   before(:each) do
  #     { 20.times {Idea.create(title: "HMMMM", body: "WHOAAAA", user_id: 8) } }}
  #     Idea.limit(6).each {|comment| user.idea << comment; user.save)}
  #   end
  #   it {expect(user.idea_count).to eq(6))}
  # end



  describe "callbacks"

end

# bundle exec rspec spec/models/user_spec.rb
