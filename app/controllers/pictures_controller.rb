class PicturesController < ApplicationController
    before_action :authenticate_user!
 def create
    @gram = Gram.find(params[:gram_id])
    @gram.pictures.create(picture_params.merge(user: current_user))
    redirect_to root_path
 end

 private

 def picture_params
    params.require(:picture)
 end
end
