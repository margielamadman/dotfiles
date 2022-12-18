local status, od = pcall(require, 'onedark')
if (not status) then return end

od.load()
