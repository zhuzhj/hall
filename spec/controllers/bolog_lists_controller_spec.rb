require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BologListsController do

  # This should return the minimal set of attributes required to create a valid
  # BologList. As you add validations to BologList, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BologListsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all bolog_lists as @bolog_lists" do
      bolog_list = BologList.create! valid_attributes
      get :index, {}, valid_session
      assigns(:bolog_lists).should eq([bolog_list])
    end
  end

  describe "GET show" do
    it "assigns the requested bolog_list as @bolog_list" do
      bolog_list = BologList.create! valid_attributes
      get :show, {:id => bolog_list.to_param}, valid_session
      assigns(:bolog_list).should eq(bolog_list)
    end
  end

  describe "GET new" do
    it "assigns a new bolog_list as @bolog_list" do
      get :new, {}, valid_session
      assigns(:bolog_list).should be_a_new(BologList)
    end
  end

  describe "GET edit" do
    it "assigns the requested bolog_list as @bolog_list" do
      bolog_list = BologList.create! valid_attributes
      get :edit, {:id => bolog_list.to_param}, valid_session
      assigns(:bolog_list).should eq(bolog_list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BologList" do
        expect {
          post :create, {:bolog_list => valid_attributes}, valid_session
        }.to change(BologList, :count).by(1)
      end

      it "assigns a newly created bolog_list as @bolog_list" do
        post :create, {:bolog_list => valid_attributes}, valid_session
        assigns(:bolog_list).should be_a(BologList)
        assigns(:bolog_list).should be_persisted
      end

      it "redirects to the created bolog_list" do
        post :create, {:bolog_list => valid_attributes}, valid_session
        response.should redirect_to(BologList.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved bolog_list as @bolog_list" do
        # Trigger the behavior that occurs when invalid params are submitted
        BologList.any_instance.stub(:save).and_return(false)
        post :create, {:bolog_list => { "title" => "invalid value" }}, valid_session
        assigns(:bolog_list).should be_a_new(BologList)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        BologList.any_instance.stub(:save).and_return(false)
        post :create, {:bolog_list => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested bolog_list" do
        bolog_list = BologList.create! valid_attributes
        # Assuming there are no other bolog_lists in the database, this
        # specifies that the BologList created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        BologList.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => bolog_list.to_param, :bolog_list => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested bolog_list as @bolog_list" do
        bolog_list = BologList.create! valid_attributes
        put :update, {:id => bolog_list.to_param, :bolog_list => valid_attributes}, valid_session
        assigns(:bolog_list).should eq(bolog_list)
      end

      it "redirects to the bolog_list" do
        bolog_list = BologList.create! valid_attributes
        put :update, {:id => bolog_list.to_param, :bolog_list => valid_attributes}, valid_session
        response.should redirect_to(bolog_list)
      end
    end

    describe "with invalid params" do
      it "assigns the bolog_list as @bolog_list" do
        bolog_list = BologList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BologList.any_instance.stub(:save).and_return(false)
        put :update, {:id => bolog_list.to_param, :bolog_list => { "title" => "invalid value" }}, valid_session
        assigns(:bolog_list).should eq(bolog_list)
      end

      it "re-renders the 'edit' template" do
        bolog_list = BologList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BologList.any_instance.stub(:save).and_return(false)
        put :update, {:id => bolog_list.to_param, :bolog_list => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested bolog_list" do
      bolog_list = BologList.create! valid_attributes
      expect {
        delete :destroy, {:id => bolog_list.to_param}, valid_session
      }.to change(BologList, :count).by(-1)
    end

    it "redirects to the bolog_lists list" do
      bolog_list = BologList.create! valid_attributes
      delete :destroy, {:id => bolog_list.to_param}, valid_session
      response.should redirect_to(bolog_lists_url)
    end
  end

end
