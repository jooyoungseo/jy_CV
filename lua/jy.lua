  Str = function(el)
    -- we don't count a word if it's entirely punctuation:
    if el.text:match("Seo,") then
        el.text:gsub("Seo,", "Kim,")
    end
  end
