require 'rails_helper'

RSpec.describe Project, type: :model do
  it "validates presence of name" do
    project = Project.new(name: nil)
    project.validate
    expect(project.errors[:name]).to include("can't be blank")
  end

  it "has many conversations" do
    assoc = Project.reflect_on_association(:conversations)
    expect(assoc.macro).to eq(:has_many)
  end
end
