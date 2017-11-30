class UsersController < ApplicationController

  def composts
    @composts = policy_scope(Compost)
  end
end
