require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", answered: false) }

  describe "attributes" do
    it "has title and body and is unanswered" do
      expect(question).to have_attributes(title: "New Question Title", body: "New Question Body", answered: false)
    end
  end
end
