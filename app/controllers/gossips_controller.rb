class GossipsController < ApplicationController
  def index
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:first_name]
    puts "$" * 60
    @first_name = params[:first_name]
    @gossips = Gossip.all
  end

  def show
    puts "$" * 60
    puts params[:id]
    puts "$" * 60
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new

  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
    puts 'redirect'
    flash[:success] = "Bravo, ton potin a été enregistré"
    redirect_to @gossip
    else
    puts "doesn't work"
    render :new
    end

  end

  def update
    @gossip = Gossip.find(params[:id])
    if @gossip.update(gossip_params)
      redirect_to @gossip
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

end
