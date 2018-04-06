require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  before do
    @request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64::encode64(ENV['ADMIN_LOGIN'] + ":" + ENV['ADMIN_PASSWORD'])
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Comment" do
        expect {
          create(:comment)
        }.to change(Comment, :count).by(1)
        #expect(response).to redirect_to post_path(:id)
      end
    end
  end
end
