class CitiesController < ApplicationController

def index
  @cities = City.all
end

def update_temp
  city = City.find(params[:id])
  response = RestClient.get "http://v.juhe.cn/weather/index", :params => { :cityname => city.juhe_id, :key => JUHE_CONFIG["api_key"]}
  data = JSON.parse(response.body)
  city.update( :current_temp => data["result"]["sk"]["temp"])
  redirect_to cities_path
end

end
