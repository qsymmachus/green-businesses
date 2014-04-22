get '/' do
  erb :index
end

post '/search' do
  @results = Business.search_company(params[:company])
  if @results
    erb :search_results
  else
    erb :index
  end
end