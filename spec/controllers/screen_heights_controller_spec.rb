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

describe ScreenHeightsController do

  # This should return the minimal set of attributes required to create a valid
  # ScreenHeight. As you add validations to ScreenHeight, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "size" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ScreenHeightsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all screen_heights as @screen_heights" do
      screen_height = ScreenHeight.create! valid_attributes
      get :index, {}, valid_session
      assigns(:screen_heights).should eq([screen_height])
    end
  end

  describe "GET show" do
    it "assigns the requested screen_height as @screen_height" do
      screen_height = ScreenHeight.create! valid_attributes
      get :show, {:id => screen_height.to_param}, valid_session
      assigns(:screen_height).should eq(screen_height)
    end
  end

  describe "GET new" do
    it "assigns a new screen_height as @screen_height" do
      get :new, {}, valid_session
      assigns(:screen_height).should be_a_new(ScreenHeight)
    end
  end

  describe "GET edit" do
    it "assigns the requested screen_height as @screen_height" do
      screen_height = ScreenHeight.create! valid_attributes
      get :edit, {:id => screen_height.to_param}, valid_session
      assigns(:screen_height).should eq(screen_height)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ScreenHeight" do
        expect {
          post :create, {:screen_height => valid_attributes}, valid_session
        }.to change(ScreenHeight, :count).by(1)
      end

      it "assigns a newly created screen_height as @screen_height" do
        post :create, {:screen_height => valid_attributes}, valid_session
        assigns(:screen_height).should be_a(ScreenHeight)
        assigns(:screen_height).should be_persisted
      end

      it "redirects to the created screen_height" do
        post :create, {:screen_height => valid_attributes}, valid_session
        response.should redirect_to(ScreenHeight.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved screen_height as @screen_height" do
        # Trigger the behavior that occurs when invalid params are submitted
        ScreenHeight.any_instance.stub(:save).and_return(false)
        post :create, {:screen_height => { "size" => "invalid value" }}, valid_session
        assigns(:screen_height).should be_a_new(ScreenHeight)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ScreenHeight.any_instance.stub(:save).and_return(false)
        post :create, {:screen_height => { "size" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested screen_height" do
        screen_height = ScreenHeight.create! valid_attributes
        # Assuming there are no other screen_heights in the database, this
        # specifies that the ScreenHeight created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ScreenHeight.any_instance.should_receive(:update).with({ "size" => "1" })
        put :update, {:id => screen_height.to_param, :screen_height => { "size" => "1" }}, valid_session
      end

      it "assigns the requested screen_height as @screen_height" do
        screen_height = ScreenHeight.create! valid_attributes
        put :update, {:id => screen_height.to_param, :screen_height => valid_attributes}, valid_session
        assigns(:screen_height).should eq(screen_height)
      end

      it "redirects to the screen_height" do
        screen_height = ScreenHeight.create! valid_attributes
        put :update, {:id => screen_height.to_param, :screen_height => valid_attributes}, valid_session
        response.should redirect_to(screen_height)
      end
    end

    describe "with invalid params" do
      it "assigns the screen_height as @screen_height" do
        screen_height = ScreenHeight.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ScreenHeight.any_instance.stub(:save).and_return(false)
        put :update, {:id => screen_height.to_param, :screen_height => { "size" => "invalid value" }}, valid_session
        assigns(:screen_height).should eq(screen_height)
      end

      it "re-renders the 'edit' template" do
        screen_height = ScreenHeight.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ScreenHeight.any_instance.stub(:save).and_return(false)
        put :update, {:id => screen_height.to_param, :screen_height => { "size" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested screen_height" do
      screen_height = ScreenHeight.create! valid_attributes
      expect {
        delete :destroy, {:id => screen_height.to_param}, valid_session
      }.to change(ScreenHeight, :count).by(-1)
    end

    it "redirects to the screen_heights list" do
      screen_height = ScreenHeight.create! valid_attributes
      delete :destroy, {:id => screen_height.to_param}, valid_session
      response.should redirect_to(screen_heights_url)
    end
  end

end