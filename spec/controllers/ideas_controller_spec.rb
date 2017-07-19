require "rails_helper"

  describe IdeasController do
    describe "GET #show" do
      context "idea with id exists" do
        let(:user) { User.create(username: "genericuser", email: "genericuser@gmail.com",
                                 password: "asdf1234", password_confirmation: "asdf1234")  }
        let(:idea) { Idea.create(title: "this is title", body: "this is body", user_id: user.id) }

        before(:each) { get :show, params: params }

      context "idea with id does not exist" do
        let(:params) { {id: idea.id} }
        it {expect(response.status).to eq(200)}
      end
    end
  end

  #    context "idea item with id does not exist" do
  #     let(:params) { {id: idea.id + 36 } }
  #     it {expect(response.status).to eq(404)}
  #  end

      # describe "GET #index"
end
