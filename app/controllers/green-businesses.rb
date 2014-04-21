get '/' do
  erb :index
end

post '/search' do
  @business = Business.find_by_company(params[:company])
  erb :business
end