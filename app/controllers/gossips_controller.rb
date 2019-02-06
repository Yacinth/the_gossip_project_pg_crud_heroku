class GossipsController < ApplicationController
  def index
    # puts "$" * 60
    # puts "Voici le message de l'URL :"
    # puts  params[:first_name]
    # puts "$" * 60
    # @first_name = params[:first_name]
    # @author = User.first.first_name
    # @title = Gossip.first.title

    # @array_gossip = Gossip.all
  end

  def show
    # puts "$" * 60
    # puts params[:id_gossip]
    # puts "$" * 60
    # id_params = params[:id_gossip].to_i
    # @array_gossip = Gossip.all
    # @gossip = @array_gossip[id_params-1]
  end

  def new
  end

  def create
  end
end
