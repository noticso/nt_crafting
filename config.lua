Config = {}
Config.Level = {
    ['1'] = 1000,
    ['2'] = 2000,
    ['3'] = 3000,
    ['4'] = 4000,
    ['5'] = 5000,
    ['6'] = 6000,
    ['7'] = 7000,
    ['8'] = 8000,
    ['9'] = 9000,
    ['10'] = 10000,
    ['11'] = 11000,
    ['12'] = 12000,
    ['13'] = 13000,
    ['14'] = 14000,
    ['15'] = 15000,
    ['16'] = 16000,
    ['17'] = 17000,
    ['18'] = 18000,
    ['19'] = 19000,
    ['20'] = 20000,
    ['21'] = 21000,
    ['22'] = 22000,
    ['23'] = 23000,
    ['24'] = 24000,
    ['25'] = 25000,
    ['26'] = 26000,
    ['27'] = 27000,
    ['28'] = 28000,
    ['29'] = 29000,
    ['30'] = 30000,
    ['31'] = 31000,
    ['32'] = 32000,
    ['33'] = 33000,
    ['34'] = 34000,
    ['35'] = 35000,
    ['36'] = 36000,
    ['37'] = 37000,
    ['38'] = 38000,
    ['39'] = 39000,
    ['40'] = 40000,
    ['41'] = 41000,
    ['42'] = 42000,
    ['43'] = 43000,
    ['44'] = 44000,
    ['45'] = 45000,
    ['46'] = 46000,
    ['47'] = 47000,
    ['48'] = 48000,
    ['49'] = 49000,
    ['50'] = 50000,
    ['51'] = 51000,
    ['52'] = 52000,
    ['53'] = 53000,
    ['54'] = 54000,
    ['55'] = 55000,
    ['56'] = 56000,
    ['57'] = 57000,
    ['58'] = 58000,
    ['59'] = 59000,
    ['60'] = 60000,
    ['61'] = 61000,
    ['62'] = 62000,
    ['63'] = 63000,
    ['64'] = 64000,
    ['65'] = 65000,
    ['66'] = 66000,
    ['67'] = 67000,
    ['68'] = 68000,
    ['69'] = 69000,
    ['70'] = 70000,
    ['71'] = 71000,
    ['72'] = 72000,
    ['73'] = 73000,
    ['74'] = 74000,
    ['75'] = 75000,
    ['76'] = 76000,
    ['77'] = 77000,
    ['78'] = 78000,
    ['79'] = 79000,
    ['80'] = 80000,
    ['81'] = 81000,
    ['82'] = 82000,
    ['83'] = 83000,
    ['84'] = 84000,
    ['85'] = 85000,
    ['86'] = 86000,
    ['87'] = 87000,
    ['88'] = 88000,
    ['89'] = 89000,
    ['90'] = 90000,
    ['91'] = 91000,
    ['92'] = 92000,
    ['93'] = 93000,
    ['94'] = 94000,
    ['95'] = 95000,
    ['96'] = 96000,
    ['97'] = 97000,
    ['98'] = 98000,
    ['99'] = 99000
}
Config.Items = {
    ['armour'] = {
        name= 'Bulletproof Vest', --Name that you want to display on the menu
        img = './img/armour.png', -- Directory where you placed the img
        id='armour', --ID of the ox_item
        material={
            iron = 2, --ID of the ox_material with quantity
            fabric = 2
        },
        points = 175,
        levelRequired = 2
    },
    ['ammo-9'] = {
        name= '9mm',
        img = './img/ammo-9.png',
        id='ammo-9',
        material={
            iron = 2,
            lead = 1
        },
        points = 200,
        levelRequired = 3
    },
    ['weapon_pistol'] = {
        name = 'Pistol',
        img = './img/WEAPON_PISTOL.png',
        id = 'weapon_pistol',
        material = {
            iron = 5,
            stone = 2,
            gold = 1
        },
        points = 400,
        levelRequired = 3
    },
    ['weapon_knife'] = {
        name = "Knife",
        img = "./img/WEAPON_KNIFE.png",
        id= 'weapon_knife',
        material = {
            iron = 2,
        },
        points = 275,
        levelRequired = 2
    },
    ['bandage'] = {
        name = "Bandage",
        img = "./img/bandage.png",
        id = "bandage",
        material = {
            wool= 2,
            fabric=2
        },
        points = 75,
        levelRequired = 1
    },
    ['medikit'] = {
        name = "Medikit",
        img = "./img/medikit.png",
        id = "medikit",
        material = {
            bandage = 4
        },
        points = 90,
        levelRequired = 2
    },
    ['ramen'] = {
        name = 'Chicken Ramen',
        img = "./img/ramen.png",
        id = "packaged_chicken",
        material ={
            packaged_chicken= 1
        },
        points = 45,
        levelRequired = 1
    },
    ['weapon_hatchet'] = {
        name = "Hatchet",
        img = "./img/WEAPON_HATCHET.png",
        id = "weapon_hatchet",
        material = {
            wood = 2,
            iron = 1,
            stone = 1,
        },
        points = 275,
        levelRequired = 1
    },
    ['parachute'] = {
        name = "Parachute",
        img = "./img/parachute.png",
        id = "parachute",
        material = {
            wool = 1,
            fabric = 3,
            gold = 1,
        },
        points = 185,
        levelRequired = 5
    },
    
    
}
Config.MaxDistance = 4
Config.ClickDistance = 2