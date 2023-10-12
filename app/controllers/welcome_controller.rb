class WelcomeController < ApplicationController
  def index
    @musicstuffs=Musicstuff.all
  end
end
