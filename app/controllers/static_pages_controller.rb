class StaticPagesController < ApplicationController
  def home

  end

  def welcome
    @welcome_name = params[:name]
  end
  
  def index
    @authors_list = User.all
    @gossip_list = Gossip.all
  end

  def gossip
    @author_name = params[:author_name]
    @gossip_params = Gossip.find_by(user_id: User.find_by(first_name: params[:author_name]))
  end

  def infos
    @user = User.find_by(first_name: params[:author_name])
  end

end
