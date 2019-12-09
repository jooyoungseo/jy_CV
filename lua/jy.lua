function Str(el)
  if el.text:match("Seo,%sJ.") then
    return pandoc.Strong(el)
  end
end
