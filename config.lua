Config = {}

Config.TunerJob = 'mechanic'

Config.JobInstall = true -- [[ Whether or not players have to have the tuner job in order to install vehicle parts ]]

Config.UseQbLock = false -- [[ https://github.com/Nathan-FiveM/qb-lock ]]

Config.WaitTimes = { -- [[ Wait times for progress bars ]]
    ['crafting'] = 20000,
    ['installing'] = 25000
}

Config.ShopItems = {
    label = "Tuner Shop",
    slots = 7,
    items = {
        [1] = {
            name = "repairkit",
            price = 250,
            amount = 30,
            info = {},
            type = "item",
            slot = 1
        },
        [2] = {
            name = "advancedrepairkit",
            price = 500,
            amount = 30,
            info = {},
            type = "item",
            slot = 2
        },
        [3] = {
            name = "harness",
            price = 300,
            amount = 25,
            info = {},
            type = "item",
            slot = 3
        },
        [4] = {
            name = "nitrous",
            price = 1200,
            amount = 20,
            info = {},
            type = "item",
            slot = 4
        },
        [5] = {
            name = "cleaningkit",
            price = 0,
            amount = 50,
            info = {},
            type = "item",
            slot = 5
        },
        [6] = {
            name = "hacking_device",
            price = 7000,
            amount = 5,
            info = {},
            type = "item",
            slot = 6
        },
        [7] = {
            name = "fake_plate",
            price = 100,
            amount = 15,
            info = {},
            type = "item",
            slot = 7
        }
    }
}

Config.Costs = { -- Don't add or remove materials. You can change the amount.
    ['engine_level1'] = {
        ['aluminum'] = 80,
        ['steel'] = 130,
        ['rubber'] = 90
    },
    ['engine_level2'] = {
        ['aluminum'] = 100,
        ['steel'] = 150,
        ['rubber'] = 105
    },
    ['engine_level3'] = {
        ['aluminum'] = 115,
        ['steel'] = 170,
        ['rubber'] = 120
    },
    ['engine_level4'] = {
        ['aluminum'] = 150,
        ['steel'] = 200,
        ['rubber'] = 140
    },
    ['transmission_level1'] = {
        ['aluminum'] = 70,
        ['steel'] = 70,
        ['rubber'] = 50
    },
    ['transmission_level2'] = {
        ['aluminum'] = 90,
        ['steel'] = 80,
        ['rubber'] = 80
    },
    ['transmission_level3'] = {
        ['aluminum'] = 105,
        ['steel'] = 100,
        ['rubber'] = 90
    },
    ['suspension_level1'] = {
        ['aluminum'] = 80,
        ['steel'] = 40,
        ['rubber'] = 110
    },
    ['suspension_level2'] = {
        ['aluminum'] = 90,
        ['steel'] = 55,
        ['rubber'] = 115
    },
    ['suspension_level3'] = {
        ['aluminum'] = 105,
        ['steel'] = 60,
        ['rubber'] = 125
    },
    ['suspension_level4'] = {
        ['aluminum'] = 125,
        ['steel'] = 90,
        ['rubber'] = 140
    },
    ['brakes_level1'] = {
        ['aluminum'] = 40,
        ['steel'] = 25,
        ['rubber'] = 100
    },
    ['brakes_level2'] = {
        ['aluminum'] = 50,
        ['steel'] = 30,
        ['rubber'] = 120
    },
    ['brakes_level3'] = {
        ['aluminum'] = 45,
        ['steel'] = 35,
        ['rubber'] = 140
    },
    ['turbo'] = {
        ['aluminum'] = 130,
        ['steel'] = 170,
        ['rubber'] = 20
    },
}

Config.BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`comet3`] = true,
    [`comet4`] = true,
    [`comet5`] = true,
}