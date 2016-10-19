defmodule DailyExperiment.PageController do
  use DailyExperiment.Web, :controller

  def index(conn, _params) do
    if user_logged_in?(conn) do
      redirect conn, to: "/composer"
    else
      render conn, "index.html"
    end
  end

  def composer(conn, _params) do
    render conn, "composer.html"
  end

  defp user_logged_in?(conn) do
    conn
    |> get_session(:current_user)
    |> is_map
  end
end
