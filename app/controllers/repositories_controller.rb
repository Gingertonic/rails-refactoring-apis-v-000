class RepositoriesController < ApplicationController
  def index
    gh = GithubService.new({"access_token" => session[:token]})
    @repos_array = gh.get_repos
  end

  def create
    gh = GithubService.new({"access_token" => session[:token]})
    gh.create_repo(params[:name])
    redirect_to '/'
  end
end
