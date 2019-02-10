class CommentsController < ApplicationController

  def create
    puts params
    @comment = Comment.new(gossip_id: params[:gossip_id], user_id: session[:user_id], content: params[:content])
    if @comment.save      # si ça marche, le comment est save et le user est redirigé vers la même page avec un message success
      redirect_to gossip_path(params[:gossip_id])
    else                  # sinon, refresh de la page avec un message d'erreur
      flash[:danger] = 'Quelques chose ne va pas.'
      redirect_to gossip_path(params[:gossip_id])
      flash.delete(:danger)
    end
  end

  def update
  end

  def destroy
  end
end
