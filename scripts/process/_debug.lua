local process = Process("_debug")

-- do some debug actions
function process:onStart()
    
    local w = 0.06
    local btn = UIButton("_debug", UIGame)
        :texture(X_UI_TILE_GREEN)
        :size(w, w)
        :relation(UI_ALIGN_LEFT, UIGame, UI_ALIGN_CENTER, 0, -0.05)
    
    async.loc(function()
        btn:size(w * 2.3, w * 2.3)
        local ti = 0
        async.setInterval(5, function(curTimer)
            ti = ti + 1
            if (ti > 50) then
                class.destroy(curTimer)
                btn:alpha(255)
                btn:size(w, w)
                view.gradient(btn, { size = 100, duration = 0.5 })
                return
            end
            local alpha = btn._alpha
            if (alpha == 255) then
                btn:alpha(130)
            else
                btn:alpha(255)
            end
        end)
    end)

end