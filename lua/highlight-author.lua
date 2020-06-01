-- downloaded from https://gist.github.com/tarleb/afee1b1d97e52aca888f410e77b3624a

local List = require 'pandoc.List'
local utils = require 'pandoc.utils'
local stringify = utils.stringify

function highlighter(given_name_pattern, family_name_pattern)
  local highlight_author = function (author)
    local given = author.given and stringify(author.given)
    local family = author.family and stringify(author.family)
    if given and given:match(given_name_pattern) and
       family and family:match(family_name_pattern) then
      author.given = {pandoc.Strong(setmetatable(author.given, nil))}
      author.family = {pandoc.Strong(setmetatable(author.family, nil))}
    end
    return author
  end
  return function(reference)
    if reference.author and reference.author.map then
      reference.author = reference.author:map(highlight_author)
    end
    return reference
  end
end

function Pandoc (doc)
  local meta = doc.meta
  local fh = io.popen(
    "pandoc-citeproc --bib2yaml "
      .. stringify(meta.bibliography)
  )
  if io.type(fh) ~= 'file' then return end

  local bibyaml = fh:read('*a')
  fh:close()

  local references = pandoc.read(bibyaml).meta.references
  meta.bibliography = nil

  meta.references = references:map(
    highlighter(stringify(meta['given-name-pattern']),
                stringify(meta['family-name-pattern']))
  )

  return utils.run_json_filter(
    pandoc.Pandoc(doc.blocks, meta),
    'pandoc-citeproc'
  )
end