-- List of mentee names to underline (full names as they appear in citations)
local mentee_names = {
    {last = "Zhou", first = "W."},
    {last = "Brar", first = "E."},
    {last = "Evans", first = "M."}, 
    {last = "Fraija", first = "N."},
    {last = "Hwang", first = "Y."},
    {last = "Fischer", first = "A."},
    {last = "Qu", first = "C."},
    {last = "Cleveland", first = "R."}
}

function Block(el)
    if el.t == "Para" or el.t == "Plain" then
        for k, _ in ipairs(el.content) do

            -- Original functionality: Make "Zhang, H." bold in citations
            if el.content[k].t == "Str" and el.content[k].text == "Zhang," and
                el.content[k + 1].t == "Space" and el.content[k + 2].t == "Str" and
                el.content[k + 2].text:find("^H.") then

                el.content[k] = pandoc.Strong {pandoc.Str("Zhang, H.")}
                -- add comma and space after Zhang, H.
                el.content[k + 1] = pandoc.Str(", ")
                table.remove(el.content, k + 2)

            -- For shared authorships: Make "Zhang*," bold in citations
            elseif el.content[k].t == "Str" and el.content[k].text == "Zhang*," and
                el.content[k + 1].t == "Space" and el.content[k + 2].t == "Str" and
                el.content[k + 2].text:find("^H.") then

                el.content[k] = pandoc.Strong {pandoc.Str("Zhang*, H.")}
                -- add comma and space after Zhang, H.
                el.content[k + 1] = pandoc.Str(", ")
                table.remove(el.content, k + 2)

            -- New functionality: Underline mentee names (following same pattern as Zhang, H.)
            elseif el.content[k].t == "Str" then
                for _, mentee in ipairs(mentee_names) do
                    if el.content[k].text == mentee.last .. "," and
                        el.content[k + 1] and el.content[k + 1].t == "Space" and
                        el.content[k + 2] and el.content[k + 2].t == "Str" and
                        el.content[k + 2].text:find("^" .. mentee.first:gsub("%.", "%%.")) then
                        -- add comma and space after mentee name
                        el.content[k + 1] = pandoc.Str(", ")
                        --local _, e = el.content[k + 2].text:find("^" .. mentee.first:gsub("%.", "%%."))
                        --local rest = el.content[k + 2].text:sub(e + 1)
                        el.content[k] = pandoc.RawInline('latex', '\\underline{' .. mentee.last .. ', ' .. mentee.first .. '}')
                        --el.content[k + 1] = pandoc.Str(rest)

                        table.remove(el.content, k + 2)
                        break
                    end
                end
            end

        end
    end
    return el
end