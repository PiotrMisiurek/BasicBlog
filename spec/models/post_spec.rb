require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validation tests' do
    it 'ensures title presence' do
      post = Post.new(content: 'Sample content').save
      expect(post).to eq(false)
    end

    it 'checks title length' do
      post = Post.new(title: 'Sample title', content: 'Sample content').save
      expect(:title).to have_at_most(50).characters
      expect(post).to eq(true)
    end

    it 'ensures content presence' do
      post = Post.new(title: 'Sample title').save
      expect(post).to eq(false)
    end

    it 'should save successfully' do
      post = Post.new(title: 'Sample title', content: 'Sample content').save
      expect(post).to eq(true)
    end
  end
end
