require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation tests' do
    it 'ensures username presence' do
      comment = Comment.new(content: 'Sample content')
      result = comment.save
      expect(result).to eq(false)
    end

    it 'ensures content presence' do
      comment = Comment.new(username: 'Username')
      result = comment.save
      expect(result).to eq(false)
    end

    it 'should save successfully' do
      comment = build(:comment)
      result = comment.save
      expect(result).to eq(true)
    end
  end
end