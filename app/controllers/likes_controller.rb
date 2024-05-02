class LikesController < ApplicationController
  
    def like
      @like = current_user.likes.build(gossip_id: params[:gossip_id])
      if @like.save
        flash[:success] = "Gossip liked!"
      else
        flash[:error] = "Unable to like gossip."
      end
      redirect_to gossips_path
    end
  
    def unlike
      @like = current_user.likes.find_by(gossip_id: params[:gossip_id])
      if @like
        @like.destroy
        flash[:success] = "Like removed."
      else
        flash[:error] = "Unable to remove like."
      end
      redirect_to gossips_path
    end
end
  