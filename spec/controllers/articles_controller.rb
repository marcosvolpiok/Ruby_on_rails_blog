require 'rails_helper'

describe ArticlesController, type: :controller do
  # article = create(:article)
  # let!(:article)
  # let(:comment) { article }
  let(:params) { {} }
  let(:params_create) { {article: {title: "Title 2", body: "Body 2"}} }

  

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

  context "POST create" do
    it "add article" do
      get :create, params: params_create
      expect(Article.count).to be_equal(2)
    end
  end
  
end

