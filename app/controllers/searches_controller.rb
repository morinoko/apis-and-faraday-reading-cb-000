class SearchesController < ApplicationController
  def search
  end

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = 'XGTDPDYBZ3JMWRTYD1QBNLEDALZFSVC51NVW0KNCUHUCF0LN'
      req.params['client_secret'] = 'WIP3X02ZXRF3520UHB5PTODEPJLBOWHLED44R3C22COMNHOE'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end

    render 'search'
  end
end
