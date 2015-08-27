require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "isn't valid without name" do
    comment = Comment.new
    comment.name = nil
    expect(comment).not_to be_valid
  end

  it "isn't valid without mail_address" do
    comment = Comment.new
    comment.name = nil
    expect(comment).not_to be_valid
  end

end
