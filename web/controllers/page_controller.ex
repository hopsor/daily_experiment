defmodule DailyExperiment.PageController do
  use DailyExperiment.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
