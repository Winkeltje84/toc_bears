require 'rails_helper'

RSpec.describe Admin::EventsController, type: :controller do
  before { login_as user }
  let(:user) { create :user, admin: true}

  let(:user) { create :user }
  let!(:event) { create :event }

  describe 'GET #index' do
    it 'returns http success' do
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
      get :show, params: { id: event.id }
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #edit' do
    it 'returns http success' do
      get :edit, params: { id: event.id }
      expect(response).to have_http_status(:success)
    end
  end
  describe 'POST #create' do
    it 'returns http success' do
      post :create, id: event.id,  params: { event: FactoryGirl.attributes_for(:event) }
      assert_redirected_to admin_events_path
    end
  end
  describe 'POST #create' do
    it 'redirects to the new event' do
      post :create, params: { event: FactoryGirl.attributes_for(:event) }
      assert_redirected_to admin_events_path
    end
  end
  describe 'PATCH/PUT #update' do
    it 'redirects to the event path' do
      patch :update, params: { id: event.id, event: { title: 'Do the Git thing' } }
      assert_redirected_to admin_event_path(event.id)
    end
  end
  describe 'DELETE #destroy' do
    it 'redirects to the events path' do
      delete :destroy, params: { id: event.id }
      assert_redirected_to admin_events_path
    end
  end
end
