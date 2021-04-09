netsh interface set interface "以太网" enable

netsh interface set interface "以太网" disable

netsh interface show interface "以太网 3"


netsh interface show interface|findstr "以太网 3"|findstr "已启用" && netsh interface set interface "以太网 3" disable