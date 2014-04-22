get '/' do
  erb :index
end

post '/search' do
  @results = Business.search_company(params[:company])
  if @results
    erb :search_results, layout: false
  else
    erb :no_results, layout: false
  end
end