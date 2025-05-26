require 'rails_helper'

RSpec.describe Conversation, type: :model do
  it "belongs to a project" do
    assoc = Conversation.reflect_on_association(:project)
    expect(assoc.macro).to eq(:belongs_to)
  end

  it "belongs to a user" do
    assoc = Conversation.reflect_on_association(:user)
    expect(assoc.macro).to eq(:belongs_to)
  end

  it "validates presence of message" do
    conversation = Conversation.new(message: nil)
    conversation.validate
    expect(conversation.errors[:message]).to include("can't be blank")
  end
end
