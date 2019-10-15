defmodule PhxChatWeb.Router do
  use PhxChatWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Phoenix.LiveView.Flash
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhxChatWeb do
    pipe_through :browser

    get "/", ChatController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxChatWeb do
  #   pipe_through :api
  # end
end
