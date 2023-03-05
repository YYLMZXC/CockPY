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
	{ config_id = 8001, gadget_id = 70350023, pos = { x = 0.0, y = 0.1, z = 0.0 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_CREATE_8002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_8002", action = "action_EVENT_GADGET_CREATE_8002" },
	{ name = "SELECT_OPTION_8003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_8003", action = "action_EVENT_SELECT_OPTION_8003", trigger_count = 0 }
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
		gadgets = { 8001 },
		regions = { },
		triggers = { "GADGET_CREATE_8002", "SELECT_OPTION_8003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_CREATE_8002(context, evt)
	if 8001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_8002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 240602008, 8001, {7}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_8003(context, evt)
	-- 判断是gadgetid 8001 option_id 7
	if 8001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_8003(context, evt)
	-- 创建编号为1（该怪物潮的识别id)的怪物潮，创建怪物总数为30，场上怪物最少5只，最多5只
	if 0 ~= ScriptLib.AutoMonsterTide(context, 1, 240602005, {5001,5002,5003,5004,5005,5006,5007,5009,5010,5008,5012,5018,5011,5019,5015,5014,5024,5013,5031,5038,5020,5021,5037,5022,5034,5032,5033,5016,5035,5036}, 30, 5, 5) then
		return -1
	end
	
	-- 删除指定group： 240602008 ；指定config：8001；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 240602008, 8001, 7) then
		return -1
	end
	
	-- 改变指定group组240602008中， configid为8001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602008, 8001, GadgetState.GearStart) then
			return -1
		end 
	
	-- 改变指定group组240602007中， configid为7002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602007, 7002, GadgetState.Default) then
			return -1
		end 
	
	-- 改变指定group组240602007中， configid为7001的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 240602007, 7001, GadgetState.Default) then
			return -1
		end 
	
	return 0
end
