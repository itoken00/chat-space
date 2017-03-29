require 'rails_helper'

describe MessagesController do

  login_user
  let(:group) {create(:group)}

  describe 'GET #index' do

    before do
      get :index, params: { group_id: group.id }
    end

    it 'assigns the requested contact @message' do
      expect(assigns(:message)).to be_a_new(Message)
    end
  end
end
