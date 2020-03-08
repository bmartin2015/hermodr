defmodule HermodrWeb.PageController do
  use HermodrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
