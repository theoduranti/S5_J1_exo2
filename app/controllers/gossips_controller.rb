class GossipsController < ApplicationController
    def new
        @gossip = Gossip.new
    end
    def create
        @gossip = Gossip.new
        @gossip.anonymous_author = params["anonym_auth"]
        @gossip.content = params["cont"]
        @gossip.save
        redirect_to gossip_path(@gossip.anonymous_author)
    end
    def show
        @gossip = Gossip.find_by_anonymous_author(params[:anonymous_author])
    end
end
