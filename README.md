# nkpn-marker
This is standalone.

# installation
write this on your server.cfg file.

```cfg
ensure nkpn-marker
```

config.lua
```lua
Config = {}
Config.Markers = {

    -- Heli Dealer
    {
        mainmarker = {
            coords = vector3(-723.46, -1429.22, 5.0),
            marker= 1,--[[ get markers here: https://docs.fivem.net/docs/game-references/markers/ ]]
            scale = 2.0,
            height = 0.3,
        },
        submarker = {
            marker = 34,
            posz = 5.55,
            -- height = .0,
        },

        rgba = {197,106,207,155},
    },

    -- Boat Dealer
    -- {
    --     mainmarker = {
    --         coords = vector3(-723.46, -1429.22, 5.0),
    --         marker= 1,--[[ get markers here: https://docs.fivem.net/docs/game-references/markers/ ]]
    --         scale = 5.0,
    --         height = 1.0,
    --     },
    --     -- submarker= {
    --     --     marker = 36,
    --     --     posz = 6.25,
    --     -- },

    --     rgba = {197,106,207,155},
    -- },
    
}
```

![Sample Photo](https://github.com/NEKOPAN-Develpments/nkpn-marker/blob/main/sample-image/sample1.png?raw=true)
