require 'rails_helper'

describe ArticlesController, type: :controller do
  # article = create(:article)
  # let!(:article)
  # let(:comment) { article }
  let(:params) { {} }

  

  before(:each) do |test|
    create(:article)
  end

  context "GET #index" do
    it "show articles" do
      get :index, params: params
      expect(assigns(:articles).size).to be_equal(1)
    end
  end

  context "GET admin/index" do
    it "show articles" do
      get :index_admin, params: params
      expect(assigns(:articles).size).to be_equal(1)
    end
  end

  
end

