1) In server.cfg insert "ensure nt_crafting"
2) In config.lua change TextLoc and Location (same vector, TextLoc needs to be a just a little bit higher)
3) In config.lua insert crafting object in Items following this syntax:
    ['Name of the ox_item'] = {
        name= 'Name that you want to display on the menu', 
        img = 'Directory where you placed the img', 
        id='Name of the ox_item', --
        material={
            iron = 2, --Name of the ox_material with quantity
            fabric = 2
        }
    },
4) Insert crafting.sql in your 
5) If you want to style the menu, go to nui/css/style.css