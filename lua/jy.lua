function Str(el)
  if el.text:match("Seo,") then
    return pandoc.Strong(el)
  end
end
