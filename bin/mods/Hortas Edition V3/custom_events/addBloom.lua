function onEvent(name, value1, value2)
   if name == 'addWaviness' then
        local tableee=mysplit(value2,", "); -- Splits value1 into a table
        tableee[1] = tonumber(tableee[1]);
        tableee[2] = tonumber(tableee[2]);

        blurSize = tableee[1]
        intensity = tableee[2]

    	addBloomEffect(value1, blurSize, intensity)
    end
end