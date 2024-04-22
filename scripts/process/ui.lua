local process = Process("ui")

function process:onStart()
    
    UIModel("test")
        :relation(UI_ALIGN_CENTER, UIGame, UI_ALIGN_CENTER, 0, 0)
        :model("Echo")

end