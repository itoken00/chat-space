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

    it 'assigns the requested contact @messages' do
      expect(assigns(:messages)).to eq group.messages
    end

    it 'assigns the requested contact @group' do
      expect(assigns(:group)).to eq group
    end

    it 'renders the :index template' do
      expect(response).to render_template :index
    end
  end

  describe 'POST #create' do
    context 'Save successfully' do
      it "saves the new contact in the database" do
        expect { post :create, params: { group_id: group.id, message: attributes_for(:message) }
        }.to change(Message, :count).by(1)
      end

      it 'create successfully to render the :index template' do
        post :create, params: { group_id: group.id, message: attributes_for(:message) }
        expect(response).to redirect_to(group_id: group.id)
      end

      it 'shows a notice message' do
        post :create, params: { group_id: group.id, message: attributes_for(:message) }
        expect(flash[:notice]).to include('メッセージが投稿されました')
      end
    end

    context 'Failed to save' do
      let(:valid_attributes){ FactoryGirl.attributes_for(:message, body: nil) }

      before do
        post :create, params: { group_id: group.id, message: valid_attributes }
      end


      it 'can not the new contact in the database' do
        expect{post :create, params: { group_id: group.id, message: valid_attributes }}.to change(Message, :count).by(0)
      end

      it ' create unsuccessfully to render the same template' do
        expect(response).to render_template :index, group_id: group.id
      end

      it 'shows an alert message' do
        expect(flash[:alert]).to include('メッセージを入力してください')
      end
    end
  end
end
