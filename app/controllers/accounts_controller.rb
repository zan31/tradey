class AccountsController < ApplicationController
    before_action :load_user, only: :show


    def show
        @cards = Card.where(user_id: @user.id)
        @user = @user
    end

    private 

    def load_user
        @user = User.where(name: params[:id]).first
    end
end
