defmodule FinboardWeb.PageController do
  use FinboardWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
