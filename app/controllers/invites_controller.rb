class InvitesController < ApplicationController

    def index
        @invites = Invite.all 
    end

    def show
        @invite = Invite.find(params[:id])
    end
end
