defmodule FinboardWeb.SampleController do
  use FinboardWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
