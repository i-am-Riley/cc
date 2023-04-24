get_valid_number = function (name, validation_error_message)
    local num = nil
    while true do
        write(name)
        write ": "
        num = tonumber(read())
        if num ~= nil then
            return num
        end
        print(validation_error_message)
    end
end
