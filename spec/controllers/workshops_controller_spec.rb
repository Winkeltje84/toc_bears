require 'rails_helper'

RSpec.describe WorkshopsController, type: :controller do
  let!(:workshop) { create :workshop }
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: { id: workshop.id }
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #edit' do
    it 'returns http success' do
      get :edit, params: { id: workshop.id }
      expect(response).to have_http_status(:success)
    end
  end
  describe 'POST #create' do
    it 'returns http success' do
      post :create, workshop: FactoryGirl.attributes_for(:workshop)
      assert_redirected_to workshop_path(assigns(:workshop).id)
    end
  end
  describe 'POST #create' do
    it 'redirects to the new workshop' do
      post :create, workshop: FactoryGirl.attributes_for(:workshop)
      assert_redirected_to workshop_path(assigns(:workshop).id)
    end
  end
  describe 'PATCH/PUT #update' do
    it 'redirects to the workshop path' do
      patch :update, params: { id: workshop.id, workshop: workshop.attributes = { title: 'Three bears eating porridge on a cold day' } }
      assert_redirected_to workshop_path(workshop.id)
    end
  end
  describe 'DELETE #destroy' do
    it 'redirects to the workshops path' do
      delete :destroy, params: { id: workshop.id }
      assert_redirected_to workshops_path
    end
  end
end
