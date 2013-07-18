class UsernamesController < ApplicationController
  # GET /usernames
  # GET /usernames.json
  before_filter :zero_users_or_authenticated, only: [:new, :create, :index, :show, :destroy]

  def zero_users_or_authenticated
    unless Username.count == 0 || current_user
      redirect_to root_path
      return false
    end
  end

  def index
    @usernames = Username.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @usernames }
    end
  end

  # GET /usernames/1
  # GET /usernames/1.json
  def show
    @username = Username.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @username }
    end
  end

  # GET /usernames/new
  # GET /usernames/new.json
  def new
    @username = Username.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @username }
    end
  end

  # GET /usernames/1/edit
  def edit
    @username = Username.find(params[:id])
  end

  # POST /usernames
  # POST /usernames.json
  def create
    @username = Username.new(params[:username])

    respond_to do |format|
      if @username.save
        format.html { redirect_to @username, notice: 'Username was successfully created.' }
        format.json { render json: @username, status: :created, location: @username }
      else
        format.html { render action: "new" }
        format.json { render json: @username.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usernames/1
  # PUT /usernames/1.json
  def update
    @username = Username.find(params[:id])

    respond_to do |format|
      if @username.update_attributes(params[:username])
        format.html { redirect_to @username, notice: 'Username was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @username.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usernames/1
  # DELETE /usernames/1.json
  def destroy
    @username = Username.find(params[:id])
    @username.destroy

    respond_to do |format|
      format.html { redirect_to usernames_url }
      format.json { head :no_content }
    end
  end
end
