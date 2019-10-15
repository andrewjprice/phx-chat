defmodule PhxChatWeb.ChatController do
  use PhxChatWeb, :controller

  def index(conn, _params) do
    Phoenix.LiveView.Controller.live_render(
      conn,
      PhxChatWeb.Live.Index,
      session: %{}
    )
  end
end
