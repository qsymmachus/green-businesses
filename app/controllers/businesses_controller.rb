get '/' do
  erb :index
end

post '/search' do
  @results = Business.search_by_company(params[:company])
  if @results.first
    erb :search_results, layout: false
  else
    erb :no_results, layout: false
  end
end