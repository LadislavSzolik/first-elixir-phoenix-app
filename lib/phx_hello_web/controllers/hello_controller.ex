defmodule PhxHelloWeb.HelloController do
  use PhxHelloWeb, :controller

  def index(conn, _params) do
    conn
    |> put_layout("admin.html")
    |> put_flash(:error, "let's pretend we got an error.")
    |> render("index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end
end
