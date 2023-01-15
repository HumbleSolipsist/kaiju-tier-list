return function(...)
  local args = {...}
  local out = {}

  for _, val in ipairs(args) do
    out[val] = {}
  end
  return out
end
