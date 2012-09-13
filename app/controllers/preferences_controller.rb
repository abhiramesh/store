class PreferencesController < ApplicationController
  # GET /preferences
  # GET /preferences.json
  def index
    @preferences = Preference.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @preferences }
    end
  end

  # GET /preferences/1
  # GET /preferences/1.json
  def show
    @preference = Preference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preference }
    end
  end

  # GET /preferences/new
  # GET /preferences/new.json
  def new
    @preference = Preference.new
    @brands = Brand.find(:all)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @preference }
    end
  end

  # GET /preferences/1/edit
  def edit
    @preference = Preference.find(params[:id])
  end

  # POST /preferences
  # POST /preferences.json
  def create
    @preference = Preference.new(params[:preference])
    params[:brand_ids].each do |brand|
    Preference.create(:brand_id => brand, :user_id => current_user.id)
  end
    redirect_to destroy_user_session_path
    
  end

  # PUT /preferences/1
  # PUT /preferences/1.json
  def update
    @preference = Preference.find(params[:id])

    respond_to do |format|
      if @preference.update_attributes(params[:preference])
        format.html { redirect_to @preference, notice: 'Preference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @preference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preferences/1
  # DELETE /preferences/1.json
  def destroy
    @preference = Preference.find(params[:id])
    @preference.destroy

    respond_to do |format|
      format.html { redirect_to preferences_url }
      format.json { head :no_content }
    end
  end
end

