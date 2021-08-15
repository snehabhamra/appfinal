class ProfileController < ApplicationController
    def index
        @profiles = Profile.all
    end

    def show
        
    end

    def new
        @profile = profile.new
    end

    def edit
    end

    def create
        @profile = profile.new(profile_params)
        @profile.user_id = current_user.id
    end

    respond_to do |format|
        if @profile.save
            format.html {redirect_to new_listing_path, notice: "Profile was successfully created."}
            format.json { render :show, status: :created, location: @profile}
        else
            format.json { render :new, status: unprocessable_entity }
        end
end
