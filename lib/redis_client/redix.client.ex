defmodule RedisClient.RedixClient do
  @behaviour RedisClient.Client

  @impl true
  def connect(opts) do
    Redix.start_link(opts)
  end

  @impl true
  def get(conn, key) do
    case Redix.command(conn, ["GET", key]) do
      {:ok, value} -> IO.inspect(value)
      error -> IO.inspect(error)
    end
  end

  @impl true
  def set(conn, key, value) do
    case Redix.command(conn, ["SET", key, value]) do
      {:ok, "OK"} -> IO.inspect("Ok")
      _ -> :error
    end
  end
end
