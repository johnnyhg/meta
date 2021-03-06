# -*- encoding: utf-8 -*-

Meta.controllers :campaigns, parent: :sellers do
  before do
    current_seller
  end

  get :index do
    @campaigns = @seller.campaigns
    render 'campaigns/index'
  end
end