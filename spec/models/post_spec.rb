require 'rails_helper'

RSpec.describe Post, { type: :model } do
  before(:each) do
    @post = Post.new(
      { title: 'Example', url: 'http://example.com' }
    )
  end

  subject { @post }

  it { should be_valid }
  it { should respond_to(:title) }
  it { should respond_to(:url) }

  it '#title returns a string' do
    expect(@post.title).to match 'Example'
  end

  it '#url returns a string' do
    expect(@post.url).to match 'http://example.com'
  end

  it '.all returns a list of posts' do
    @post.save
    expect(Post.all.size).not_to eq 0
  end

  describe 'when title and url are blank' do
    before { @post.title = '', @post.url = '' }
    it { should_not be_valid }
  end
end
