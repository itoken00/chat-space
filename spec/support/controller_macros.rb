module ControllerMacros

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      allow(controller).to receive(:authenticate_user!).and_return true
      sign_in FactoryGirl.create(:user)
    end
  end

end

