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
	{ config_id = 211001, gadget_id = 70211101, pos = { x = 699.9, y = 340.4, z = 1427.2 }, rot = { x = 0.0, y = 181.6, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", isOneoff = true, persistent = true, type = GadgetType.GADGET_WORLD_CHECT },
	{ config_id = 211002, gadget_id = 70220004, pos = { x = 698.3, y = 340.2, z = 1428.2 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 211003, gadget_id = 70220004, pos = { x = 701.3, y = 340.5, z = 1428.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 },
	{ config_id = 211004, gadget_id = 70220004, pos = { x = 699.9, y = 340.3, z = 1425.7 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24 }
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
		monsters = { },
		gadgets = { 211001, 211002, 211003, 211004 },
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
