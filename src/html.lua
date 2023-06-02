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

local function elementToHtml(element)
  -- opening the element
  local output = "<" .. element.tag.name

  -- adding element tags
  if type(element.content) ~= "string" then
    for k, v in pairs(element.content) do
      if type(k) == "string" then
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
