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

local function processChildElements(element)
  local output = ""

  if type(element.content) == "string" then
    return output .. indent(escapeCharacters(element.content))
  end

  for _, v in ipairs(element.content) do
    contentType = type(v)
    if contentType == "string" then
      output = output .. indent(escapeCharacters(v)) .. "\n"
    elseif contentType == "table" then
      output = output .. indent(v:toHtml()) .. "\n"
    end
  end
  return output
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
  output = output .. processChildElements(element)

  -- closing the element
  output = output .. "</" .. element.tag.name .. ">"
  return output
end

function html.document(c)
  return {
    content = c,
    toHtml = function(document)
      local output = "<!DOCTYPE html>\n"
      for _, element in ipairs(document.content) do
        output = output .. element:toHtml() .. "\n"
      end
      return output
    end
  }
end

function html.literal(s)
  return {
    content = s,
    toHtml = function(self)
      return self.content
    end
  }
end

function html.comment(c)
  return {
    content = c,
    toHtml = function(self)
      return "<!--\n" .. processChildElements(self) .. "\n-->"
    end
  }
end

function html.style(c)
  return {
    content = c,
    toHtml = function(self)
      local output = "<style>\n"
      for class, rules in pairs(self.content) do
        output = output .. "  " .. class .. " {\n"
        for ruleName, ruleVal in pairs(rules) do
          output = output .. "    " .. ruleName .. ":" .. ruleVal .. ";\n"
        end
        output = output .. "  }\n"
      end
      return output .. "</style>"
    end
  }
end

local tags = {
  {name = "a",
    description = "Defines a hyperlink"},
  {name = "abbr",
    description = "Defines an abbreviation or an acronym"},
  {name = "address",
    description = "Defines contact information for the author/owner of a document"},
  {name = "area",
    description = "Defines an area inside an image map",
    empty = true},
  {name = "article",
    description = "Defines an article"},
  {name = "aside",
    description = "Defines content aside from the page content"},
  {name = "audio",
    description = "Defines embedded sound content"},
  {name = "b",
    description = "Defines bold text"},
  {name = "base",
    description = "Specifies the base URL/target for all relative URLs in a document",
    empty = true},
  {name = "bdi",
    description = "Isolates a part of text that might be formatted in a different direction from other text outside it"},
  {name = "bdo",
    description = "Overrides the current text direction"},
  {name = "blockquote",
    description = "Defines a section that is quoted from another source"},
  {name = "body",
    description = "Defines the document's body"},
  {name = "br",
    description = "Defines a single line break",
    empty = true},
  {name = "button",
    description = "Defines a clickable button"},
  {name = "canvas",
    description = "Used to draw graphics, on the fly, via scripting (usually JavaScript)"},
  {name = "caption",
    description = "Defines a table caption"},
  {name = "cite",
    description = "Defines the title of a work"},
  {name = "code",
    description = "Defines a piece of computer code"},
  {name = "col",
    description = "Specifies column properties for each column within a <colgroup> element ",
    empty = true},
  {name = "colgroup",
    description = "Specifies a group of one or more columns in a table for formatting"},
  {name = "data",
    description = "Adds a machine-readable translation of a given content"},
  {name = "datalist",
    description = "Specifies a list of pre-defined options for input controls"},
  {name = "dd",
    description = "Defines a description/value of a term in a description list"},
  {name = "del",
    description = "Defines text that has been deleted from a document"},
  {name = "details",
    description = "Defines additional details that the user can view or hide"},
  {name = "dfn",
    description = "Specifies a term that is going to be defined within the content"},
  {name = "dialog",
    description = "Defines a dialog box or window"},
  {name = "div",
    description = "Defines a section in a document"},
  {name = "dl",
    description = "Defines a description list"},
  {name = "dt",
    description = "Defines a term/name in a description list"},
  {name = "em",
    description = "Defines emphasized text "},
  {name = "embed",
    description = "Defines a container for an external application",
    empty = true},
  {name = "fieldset",
    description = "Groups related elements in a form"},
  {name = "figcaption",
    description = "Defines a caption for a <figure> element"},
  {name = "figure",
    description = "Specifies self-contained content"},
  {name = "footer",
    description = "Defines a footer for a document or section"},
  {name = "form",
    description = "Defines an HTML form for user input"},
  {name = "h1",
    description = "Defines an HTML heading"},
  {name = "h2",
    description = "Defines an HTML heading"},
  {name = "h3",
    description = "Defines an HTML heading"},
  {name = "h4",
    description = "Defines an HTML heading"},
  {name = "h5",
    description = "Defines an HTML heading"},
  {name = "h6",
    description = "Defines an HTML heading"},
  {name = "head",
    description = "Contains metadata/information for the document"},
  {name = "header",
    description = "Defines a header for a document or section"},
  {name = "hr",
    description = "Defines a thematic change in the content",
    empty = true},
  {name = "html",
    description = "Defines the root of an HTML document"},
  {name = "i",
    description = "Defines a part of text in an alternate voice or mood"},
  {name = "img",
    description = "Defines an inline frame",
    empty = true},
  {name = "iframe",
    description = "Defines an image"},
  {name = "input",
    description = "Defines an input control",
    empty = true},
  {name = "ins",
    description = "Defines a text that has been inserted into a document"},
  {name = "kbd",
    description = "Defines keyboard input"},
  {name = "label",
    description = "Defines a label for an <input> element"},
  {name = "legend",
    description = "Defines a caption for a <fieldset> element"},
  {name = "li",
    description = "Defines a list item"},
  {name = "link",
    description = "Defines the relationship between a document and an external resource (most used to link to style sheets)",
    empty = true},
  {name = "main",
    description = "Specifies the main content of a document"},
  {name = "map",
    description = "Defines an image map"},
  {name = "mark",
    description = "Defines marked/highlighted text"},
  {name = "meta",
    description = "Defines metadata about an HTML document",
    empty = true},
  {name = "meter",
    description = "Defines a scalar measurement within a known range (a gauge)"},
  {name = "nav",
    description = "Defines navigation links"},
  {name = "noscript",
    description = "Defines an alternate content for users that do not support client-side scripts"},
  {name = "object",
    description = "Defines a container for an external application"},
  {name = "ol",
    description = "Defines an ordered list"},
  {name = "optgroup",
    description = "Defines a group of related options in a drop-down list"},
  {name = "option",
    description = "Defines an option in a drop-down list"},
  {name = "output",
    description = "Defines the result of a calculation"},
  {name = "p",
    description = "Defines a paragraph"},
  {name = "param",
    description = "Defines a parameter for an object",
    empty = true},
  {name = "picture",
    description = "Defines a container for multiple image resources"},
  {name = "pre",
    description = "Defines preformatted text"},
  {name = "progress",
    description = "Represents the progress of a task"},
  {name = "q",
    description = "Defines a short quotation"},
  {name = "rp",
    description = "Defines what to show in browsers that do not support ruby annotations"},
  {name = "rt",
    description = "Defines an explanation/pronunciation of characters (for East Asian typography)"},
  {name = "ruby",
    description = "Defines a ruby annotation (for East Asian typography)"},
  {name = "s",
    description = "Defines text that is no longer correct"},
  {name = "samp",
    description = "Defines sample output from a computer program"},
  {name = "script",
    description = "Defines a client-side script"},
  {name = "section",
    description = "Defines a section in a document"},
  {name = "select",
    description = "Defines a drop-down list"},
  {name = "small",
    description = "Defines smaller text"},
  {name = "source",
    description = "Defines multiple media resources for media elements (<video> and <audio>)",
    empty = true},
  {name = "span",
    description = "Defines a section in a document"},
  {name = "strong",
    description = "Defines important text"},
  {name = "sub",
    description = "Defines subscripted text"},
  {name = "summary",
    description = "Defines a visible heading for a <details> element"},
  {name = "sup",
    description = "Defines superscripted text"},
  {name = "svg",
    description = "Defines a container for SVG graphics"},
  {name = "table",
    description = "Defines a table"},
  {name = "tbody",
    description = "Groups the body content in a table"},
  {name = "td",
    description = "Defines a cell in a table"},
  {name = "template",
    description = "Defines a container for content that should be hidden when the page loads"},
  {name = "textarea",
    description = "Defines a multiline input control (text area)"},
  {name = "tfoot",
    description = "Groups the footer content in a table"},
  {name = "th",
    description = "Defines a header cell in a table"},
  {name = "thead",
    description = "Groups the header content in a table"},
  {name = "time",
    description = "Defines a specific time (or datetime)"},
  {name = "title",
    description = "Defines a title for the document"},
  {name = "tr",
    description = "Defines a row in a table"},
  {name = "track",
    description = "Defines text tracks for media elements (<video> and <audio>)",
    empty = true},
  {name = "u",
    description = "Defines some text that is unarticulated and styled differently from normal text"},
  {name = "ul",
    description = "Defines an unordered list"},
  {name = "var",
    description = "Defines a variable"},
  {name = "video",
    description = "Defines embedded video content"},
  {name = "wbr",
    description = "Defines a possible line-break",
    empty = true},
}

for _, t in ipairs(tags) do
  html[t.name] = function(c)
    return {tag = t, content = c, toHtml = elementToHtml}
  end
end

return html
