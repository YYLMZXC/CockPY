--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 27, monster_id = 20011101, pos = { x = 407.2, y = 200.4, z = -213.3 }, rot = { x = 0.0, y = 80.6, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 28, monster_id = 20011101, pos = { x = 406.5, y = 200.4, z = -218.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 29, monster_id = 20011001, pos = { x = 409.4, y = 200.4, z = -214.6 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 30, monster_id = 20011001, pos = { x = 408.6, y = 200.2, z = -217.2 }, rot = { x = 0.0, y = 44.8, z = 0.0 }, level = 19, drop_tag = "史莱姆" },
	{ config_id = 31, monster_id = 20011001, pos = { x = 405.8, y = 200.4, z = -215.3 }, rot = { x = 0.0, y = 120.7, z = 0.0 }, level = 19, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 6, shape = RegionShape.SPHERE, radius = 5, pos = { x = 408.2, y = 200.2, z = -213.9 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_6", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_6" }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 29, 30, 31 },
		gadgets = { },
		regions = { 6 },
		triggers = { "ENTER_REGION_6" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_ENTER_REGION_6(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 27, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟1秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 28, delay_time = 1 }) then
	  return -1
	end
	
	return 0
end
