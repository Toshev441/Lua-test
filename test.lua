print('hi')

local socket = require('socket')
local sock = socket.tcp4()

sock:bind("*", 8080)
sock:listen(12)
local client = sock:accept()
if client then
    data = client:receive()
    print(data)

end