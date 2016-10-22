require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.new(title: "New Question Title", body: "New Question Body", resolved: false) }
  let(:answer) { Answer.new(question: question, body: "New Answer Body") }

  describe "attributes" do
    it "should responde to body" do
      expect(answer).to respond_to(:body)
    end
  end
end
