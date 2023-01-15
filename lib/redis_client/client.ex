defmodule RedisClient.Client do
  @typep key :: binary()
  @typep value :: binary()
  @typep opts :: list()
  @typep conn :: binary()

  @callback connect(opts) :: Tuple.t()
  @callback get(conn, key) :: Tuple.t()
  @callback set(conn, key, value) :: Tuple.t()
end
