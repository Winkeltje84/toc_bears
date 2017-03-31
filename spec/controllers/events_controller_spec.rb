require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  let!(:event) { create :event }
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
     post :create, event: FactoryGirl.attributes_for(:event)
     assert_redirected_to event_path(assigns(:event).id)
   end
 end
 describe 'POST #create' do
   it 'redirects to the new event' do
     post :create, event: FactoryGirl.attributes_for(:event)
     assert_redirected_to event_path(assigns(:event).id)
   end
 end
 describe 'PATCH/PUT #update' do
   it 'redirects to the event path' do
     patch :update, params: { id: event.id, event: event.attributes = { title: 'Do the Git thing' } }
     assert_redirected_to event_path(event.id)
   end
 end
 describe 'DELETE #destroy' do
   it 'redirects to the events path' do
     delete :destroy, params: { id: event.id }
     assert_redirected_to events_path
  end
 end
end
