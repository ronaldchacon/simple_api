require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe "GET /posts" do
    it 'returns a list of posts' do
      FactoryGirl.create_list(:post, 5)
      get '/posts'
      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(json.length).to eq(5)
    end
  end

  describe 'GET /posts/:id' do
    it 'returns a single post' do
      post = FactoryGirl.create(:post)
      get "/posts/#{post.id}"
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json['post']['title']).to eq(post.title)
      expect(json['post']['url']).to eq(post.url)
    end
  end
end
