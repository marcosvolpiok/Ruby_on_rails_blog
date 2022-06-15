require 'rails_helper'

describe ArticlesController, type: :controller do
  # article = create(:article)
  # let!(:article)
  # let(:comment) { article }
  let(:params) { {} }
  let(:params_create) { {article: {title: "Title 2", body: "Body 2"}} }
  let(:params_update) { {article: {title: "Title 3", body: "Body 3"}, id: Article.first.id} }

  

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
      expect(Article.where(title: params_create[:article][:title]).count).to be_equal(1)
    end
  end

  context "POST update" do
    it "add article" do
      get :update, params: params_update
      expect(Article.where(title: params_update[:article][:title]).count).to be_equal(1)
    end
  end

  
  
end

