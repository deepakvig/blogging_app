require "rails_helper"

RSpec.describe CommentsController, type: :routing do
  let!(:post1)  { FactoryBot.create(:post) }

  describe "routing" do
    it "routes to #create" do
      expect(:post => "/posts/"+post1.id.to_s+"/comments").to route_to("comments#create", post_id: post1.id.to_s)
    end

    it "routes to #destroy" do
      expect(:delete => "/posts/"+post1.id.to_s+"/comments/1").to route_to("comments#destroy", :id => "1", post_id: post1.id.to_s)
    end
  end
end
