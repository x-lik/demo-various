--- 是否拖拽中
---@return boolean
function cursor.isDragging()
    return cursor.currentKey() == "drag"
end
--- 是否跟踪图层中
---@return boolean
function cursor.isFollowing()
    return cursor.currentKey() == "follow"
end