----------------------------------------------------------------------------------------------------subgroup
-- 定义一个函数来生成subgroup配置
local function subgroup_autogenerate(name)
  return {
    type = "item-subgroup",
    name = "rlcpc-"..name.."",
    group = "planet-cyber",
    order = "a"
  }
end

-- 创建包含对应名称的表
      --[[顺序注释
    矿
    板
    齿轮
    棒
    缆
    梁
    粉
    粉碎
    ]]
local subgroupnames = {
  "ore",
  "plate",
  "gear-wheel",
  "stick",
  "cable",
  "beam",
  "dust",
  "crush",
}

-- 生成多个subgroup配置
local subgroups = {}
for _,subgroup in ipairs(subgroupnames) do
    table.insert(subgroups, subgroup_autogenerate(subgroup))
end

----------------------------------------------------------------------------------------------------add
-- 合并多个表
local all_things = {}
for _, subgroup in ipairs(subgroups) do
    table.insert(all_things, subgroup)
end

-- 将合并后的表添加到游戏数据中
if data and data.extend then
    data:extend(all_things)
end

----------------------------------------------------------------------------------------------------test
--
-- 打印生成的subgroup配置（仅用于测试）
for _,subgroup in ipairs(subgroups) do
  for key, value in pairs(subgroup) do
      print(key, value)
  end
  print("--------------------------------------")
end




