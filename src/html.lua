local html = {}

local function escapeCharacters(s)
  return s:gsub("&", "&amp;")
          :gsub("\"", "&quot;")
          :gsub("'", "&apos;")
          :gsub("<", "&lt;")
          :gsub(">", "&gt;")
end

local function indent(s)
  return "  " .. s:gsub("\n", "\n  ")
end

local function processChildElements(element, processString)
  local output = ""

  if type(element.content) == "string" then
    return output .. processString(element.content)
  end

  for _, v in ipairs(element.content) do
    contentType = type(v)
    if contentType == "string" then
      output = output ..  processString(v) .. "\n"
    elseif contentType == "table" then
      output = output .. v:toHtml() .. "\n"
    end
  end
  return output:sub(1, -2)
end

-- loop utility function for iterating over element's attributes
-- in alphabetical order
local function attributes(element)
  local atts = {}
  
  -- Extract all attributes from the element
  for k, v in pairs(element.content) do
    if type(k) == "string" then
      atts[#atts + 1] = {key = k, val = v}
    end
  end
  
  -- Sort attributes in alphabetical order
  table.sort(atts, function (a, b)
    local l, m = string.len(a.key), string.len(b.key)
    for i = 1, math.min(l, m) do
      local x, y = string.byte(a.key), string.byte(b.key)
      if x ~= y then
        return x < y
      end
    end
    return l < m
  end)

  -- iterate over attributes
  local function iterator(state, control)
    state.i = state.i + 1
    local i = state.i
    
    if i > #atts then
      return nil
    else
      return atts[i].key, atts[i].val
    end
  end
  
  local state = {i = 0}
  local control = true

  -- return loop utilities
  return iterator, state, control
end

local function elementToHtml(element)
  -- opening the element
  local output = "<" .. element.tag.name

  -- adding element tags
  if type(element.content) ~= "string" then
    for k, v in attributes(element) do
      output = output .. " " .. k .. " = \""
      if type(v) == "boolean" then
        ouput = output .. (v and "true" or "false")
      elseif type(v) == "number" or type(v) == "string" then
        output = output .. escapeCharacters(v)
      else
        error("Value needs to be a boolean, number, or string")
      end
      output = output .. "\""
    end
  end

  if element.tag.empty then
    return output .. "/>"
  end
  output = output .. ">\n"

  -- adding element content
  output = output .. indent(processChildElements(element, escapeCharacters)) .. "\n"

  -- closing the element
  output = output .. "</" .. element.tag.name .. ">"
  return output
end

function html.document(c)
  return {
    content = {html.html(c)},
    toHtml = function(document)
      return "<!DOCTYPE html>\n" .. processChildElements(document, escapeCharacters) .. "\n"
    end
  }
end

function html.literal(c)
  return {
    content = c,
    toHtml = function(self)
      return self.content
    end
  }
end

function html.comment(c)
  return {
    content = c,
    toHtml = function(self)
      return "<!--\n"
        .. indent(processChildElements(self, escapeCharacters))
        .. "\n-->"
    end
  }
end

function html.spliceFileLiteral(fileName)
  return {
    fileName = fileName,
    toHtml = function(self)
      local output = ""

      for line in io.lines(self.fileName or error("fileName required!")) do
        output = output .. line .. "\n"
      end

      return output:sub(1, -2)
    end
  }
end

function html.spliceStylesheet(fileName)
  return html.style{
    html.spliceFileLiteral(fileName)
  }
end

local tags = require "tags"

for _, t in ipairs(tags) do
  html[t.name] = function(c)
    return {tag = t, content = c, toHtml = elementToHtml}
  end
end

return html
