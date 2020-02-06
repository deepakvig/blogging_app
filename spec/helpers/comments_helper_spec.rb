require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CommentsHelper. For example:
#
# describe CommentsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe CommentsHelper, type: :helper do
  describe "#break_the_lines" do
    it "returns html_safe string" do
      helper.break_the_lines("abc\ndef").should eql('abc<br/>def')
    end
  end
end
