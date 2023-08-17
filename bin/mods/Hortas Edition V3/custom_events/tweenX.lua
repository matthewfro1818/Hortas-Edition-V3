function mysplit (inputstr, sep)
    if sep == nil then
        sep = "%s";
    end
    local t={};
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        table.insert(t, str);
    end
    return t;
end

function onEvent(name, value1, value2)
    if name == "tweenX" then
        local tableee=mysplit(value2,", "); -- Splits value1 into a table
        tableee[1] = tonumber(tableee[1]);
        tableee[2] = tonumber(tableee[2]);

        x = tableee[1]
        dur = tableee[2]
        ease = tableee[3]

        doTweenX('funnyTweenX', value1, x, dur, ease)
    end
end