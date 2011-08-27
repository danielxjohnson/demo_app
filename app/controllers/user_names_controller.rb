class UserNamesController < ApplicationController
  # GET /user_names
  # GET /user_names.xml
  def index
    @user_names = UserName.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_names }
    end
  end

  # GET /user_names/1
  # GET /user_names/1.xml
  def show
    @user_name = UserName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_name }
    end
  end

  # GET /user_names/new
  # GET /user_names/new.xml
  def new
    @user_name = UserName.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_name }
    end
  end

  # GET /user_names/1/edit
  def edit
    @user_name = UserName.find(params[:id])
  end

  # POST /user_names
  # POST /user_names.xml
  def create
    @user_name = UserName.new(params[:user_name])

    respond_to do |format|
      if @user_name.save
        format.html { redirect_to(@user_name, :notice => 'User name was successfully created.') }
        format.xml  { render :xml => @user_name, :status => :created, :location => @user_name }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_names/1
  # PUT /user_names/1.xml
  def update
    @user_name = UserName.find(params[:id])

    respond_to do |format|
      if @user_name.update_attributes(params[:user_name])
        format.html { redirect_to(@user_name, :notice => 'User name was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_name.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_names/1
  # DELETE /user_names/1.xml
  def destroy
    @user_name = UserName.find(params[:id])
    @user_name.destroy

    respond_to do |format|
      format.html { redirect_to(user_names_url) }
      format.xml  { head :ok }
    end
  end
end
