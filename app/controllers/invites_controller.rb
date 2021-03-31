class InvitesController < ApplicationController

    def index
        @invites = Invite.all 
    end

    def new
        @invite = Invite.new

        @events = Event.all
        @users = User.all
    end

    def show
        @invite = Invite.find(params[:id])
    end

    def create
        @invite = Invite.create(invite_params)

        redirect_to invite_path(@invite.id)
    end

    def invite_params
        params.require(:invite).permit(:title, :event_id, :user_id)
    end
end
