require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'test GET #index' do
    before(:example) { get user_posts_path(1) }

    it 'return correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'should return the rendered template' do
      expect(response).to render_template('index')
    end

    it 'should include correct placeholder text' do
      expect(response.body).to include('Here is a list of posts for a given user')
    end
  end

  describe 'test GET #show' do
    before(:example) { get user_post_path(1, 1) }

    it 'return correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'should return the rendered template' do
      expect(response).to render_template('show')
    end

    it 'return correct placeholder text' do
      expect(response.body).to include('Here is a detailed page of a post')
    end
  end
end
