process = self()

spawn_link( fn ->
  send(process, {:msg, "hello world!!!"})
end)

receive do
  {:msg, content} -> IO.puts(content)
end
