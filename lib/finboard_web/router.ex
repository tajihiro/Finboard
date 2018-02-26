defmodule FinboardWeb.Router do
  use FinboardWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FinboardWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/sample", SampleController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", FinboardWeb do
  #   pipe_through :api
  # end
end
