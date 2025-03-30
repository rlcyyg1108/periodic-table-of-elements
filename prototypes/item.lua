----------------------------------------------------------------------------------------------------item
-- 定义一个函数来生成item配置
local function item_autogenerate(name)
  return {
      type = "item",
      name = "rlcpc-"..name.."-ore",
      icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
      subgroup = "rlcpc-ore",
      order = "a",
      stack_size = 100
    },
    {
      type = "item",
      name = "rlcpc-"..name.."-plate",
      icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
      subgroup = "rlcpc-plate",
      order = "a",
      stack_size = 100
      },
      {
      type = "item",
      name = "rlcpc-"..name.."-gear-wheel",
      icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
      subgroup = "rlcpc-gear-wheel",
      order = "a",
      stack_size = 100
      },
      {
      type = "item",
      name = "rlcpc-"..name.."-stick",
      icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
      subgroup = "rlcpc-stick",
      order = "a",
      stack_size = 100
      },
      {
      type = "item",
      name = "rlcpc-"..name.."-cable",
      icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
      subgroup = "rlcpc-cable",
      order = "a",
      stack_size = 100
      },
      {
      type = "item",
      name = "rlcpc-"..name.."-beam",
      icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
      subgroup = "rlcpc-beam",
      order = "a",
      stack_size = 100
      },
      {
      type = "item",
      name = "rlcpc-"..name.."-dust",
      icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
      subgroup = "rlcpc-dust",
      order = "a",
      stack_size = 100
      },
      {
      type = "item",
      name = "rlcpc-"..name.."-crush",
      icon = "__planet-cyber__/graphics/icons/planet-cyber.png",
      subgroup = "rlcpc-crush",
      order = "a",
      stack_size = 100
      }
end

-- 创建包含对应名称的表
local itemnames = {
  "history-1",
  "history-2",
  "history-3",
  "ore",
  "Hydrogen", "Helium", "Lithium", "Beryllium", "Boron", "Carbon", "Nitrogen", "Oxygen", "Fluorine", "Neon",
  "Sodium", "Magnesium", "Aluminum", "Silicon", "Phosphorus", "Sulfur", "Chlorine", "Argon", "Potassium", "Calcium",
  "Scandium", "Titanium", "Vanadium", "Chromium", "Manganese", "Iron", "Cobalt", "Nickel", "Copper", "Zinc",
  "Gallium", "Germanium", "Arsenic", "Selenium", "Bromine", "Krypton", "Rubidium", "Strontium", "Yttrium", "Zirconium",
  "Niobium", "Molybdenum", "Technetium", "Ruthenium", "Rhodium", "Palladium", "Silver", "Cadmium", "Indium", "Tin",
  "Antimony", "Tellurium", "Iodine", "Xenon", "Cesium", "Barium", "Lanthanum", "Cerium", "Praseodymium", "Neodymium",
  "Promethium", "Samarium", "Europium", "Gadolinium", "Terbium", "Dysprosium", "Holmium", "Erbium", "Thulium", "Ytterbium",
  "Lutetium", "Hafnium", "Tantalum", "Tungsten", "Rhenium", "Osmium", "Iridium", "Platinum", "Gold", "Mercury",
  "Thallium", "Lead", "Bismuth", "Polonium", "Astatine", "Radon", "Francium", "Radium", "Actinium", "Thorium",
  "Protactinium", "Uranium", "Neptunium", "Plutonium", "Americium", "Curium", "Berkelium", "Californium", "Einsteinium", "Fermium",
  "Mendelevium", "Nobelium", "Lawrencium", "Rutherfordium", "Dubnium", "Seaborgium", "Bohrium", "Hassium", "Meitnerium", "Darmstadtium",
  "Roentgenium", "Copernicium", "Nihonium", "Flerovium", "Moscovium", "Livermorium", "Tennessine", "Oganesson",
}

-- 生成多个item配置
local items = {}
for _, item in ipairs(itemnames) do
    local ore_item,plate_item,gear_wheel_item,stick_item,cable_item,beam_item,dust_item,crush_item = item_autogenerate(item)
    table.insert(items, ore_item)
    table.insert(items, plate_item)
    table.insert(items, gear_wheel_item)
    table.insert(items, stick_item)
    table.insert(items, cable_item)
    table.insert(items, beam_item)
    table.insert(items, dust_item)
    table.insert(items, crush_item)
end

----------------------------------------------------------------------------------------------------entityitem
-- 定义一个函数来生成 entityitem 配置
function entityitem_autogenerate(name,icon)
  return {
      type = "item",
      name = "rlcpc-"..name.."",
      icon = "__planet-cyber__/graphics/icons/"..icon..".png",
      subgroup = "rlcyyg1",
      order = "a",
      stack_size = 100,
      place_result = "rlcpc-"..name.."",
  }
end

-- 创建包含对应名称的表
local entityitemnames = {
  {
  name = "planet-cyber",
  icon = "planet-cyber",
  },
}

-- 生成多个 entityitem 配置
local entityitems = {}
for _, entityitemname in ipairs(entityitemnames) do
  table.insert(entityitems, entityitem_autogenerate(entityitemname.name,entityitemname.icon))
end

----------------------------------------------------------------------------------------------------add
-- 合并多个表
local all_things = {}
for _, item in ipairs(entityitems) do
    table.insert(all_things, item)
end
for _, item in ipairs(items) do
    table.insert(all_things, item)
end

-- 将合并后的表添加到游戏数据中
if data and data.extend then
    data:extend(all_things)
end

----------------------------------------------------------------------------------------------------test
--
-- 打印生成的item配置（仅用于测试）
for _,item in ipairs(items) do
  for key, value in pairs(item) do
      print(key, value)
  end
  print("--------------------------------------")
end
-- 打印生成的 entity 配置（仅用于测试）
for _, entityitem in ipairs(entityitems) do
  for key, value in pairs(entityitem) do
      print(key, value)
  end
  print("--------------------------------------")
end


