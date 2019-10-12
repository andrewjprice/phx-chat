defmodule PhxChatWeb.PageController do
  use PhxChatWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
