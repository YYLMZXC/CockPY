--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 96, gadget_id = 70211021, pos = { x = 94.4, y = -3.4, z = -153.5 }, rot = { x = 0.0, y = 359.6, z = 0.0 }, level = 1, drop_tag = "战斗高级蒙德", type = GadgetType.GADGET_DUNGEON_SECRET_CHEST },
	{ config_id = 97, gadget_id = 70900046, pos = { x = 91.0, y = -10.5, z = -149.6 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 101, gadget_id = 70900046, pos = { x = 90.8, y = -10.5, z = -148.2 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 102, gadget_id = 70900046, pos = { x = 91.0, y = -10.5, z = -146.5 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 103, gadget_id = 70900046, pos = { x = 90.2, y = -10.5, z = -145.1 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 104, gadget_id = 70900046, pos = { x = 92.7, y = -10.5, z = -145.0 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 105, gadget_id = 70900046, pos = { x = 94.8, y = -10.5, z = -146.9 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 106, gadget_id = 70900046, pos = { x = 89.3, y = -10.5, z = -147.9 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 107, gadget_id = 70900046, pos = { x = 93.3, y = -10.5, z = -148.3 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 108, gadget_id = 70900046, pos = { x = 95.8, y = -10.5, z = -150.6 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 109, gadget_id = 70900046, pos = { x = 96.6, y = -10.5, z = -148.7 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 110, gadget_id = 70900046, pos = { x = 97.1, y = -10.5, z = -145.9 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 111, gadget_id = 70900046, pos = { x = 95.8, y = -10.5, z = -144.7 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 112, gadget_id = 70900046, pos = { x = 93.9, y = -10.5, z = -144.2 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 113, gadget_id = 70900046, pos = { x = 93.2, y = -10.5, z = -147.1 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 114, gadget_id = 70900046, pos = { x = 93.5, y = -10.5, z = -150.6 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 115, gadget_id = 70900046, pos = { x = 97.7, y = -10.5, z = -147.8 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 116, gadget_id = 70900046, pos = { x = 91.7, y = -10.5, z = -143.8 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 },
	{ config_id = 117, gadget_id = 70900046, pos = { x = 95.1, y = -10.5, z = -143.3 }, rot = { x = 0.0, y = 83.6, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
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
	rand_suite = true,
	npcs = { }
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
		monsters = { },
		gadgets = { 96, 97, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
