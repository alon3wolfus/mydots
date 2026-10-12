hl.bind("switch:on:Lid Switch", function()
    hl.dispatch(hl.dsp.global("caelestia:lock"))
    hl.dispatch(hl.dsp.exec_cmd("sh -c 'sleep 2; systemctl suspend'"))
end, { locked = true })
