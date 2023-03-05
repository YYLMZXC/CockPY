--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124001, monster_id = 20010901, pos = { x = 541.5, y = 181.6, z = 1159.4 }, rot = { x = 0.0, y = 0.0, z = 0.0 }, level = 24, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124002, gadget_id = 70510013, pos = { x = 541.5, y = 181.6, z = 1159.4 }, rot = { x = 0.0, y = 319.8, z = 0.0 }, level = 32, isOneoff = true, persistent = true },
	{ config_id = 124003, gadget_id = 70211101, pos = { x = 541.7, y = 181.6, z = 1162.1 }, rot = { x = 0.0, y = 160.5, z = 0.0 }, level = 24, drop_tag = "解谜低级璃月", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "GADGET_STATE_CHANGE_124004", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_124004", action = "action_EVENT_GADGET_STATE_CHANGE_124004", trigger_count = 0 },
	{ name = "ANY_MONSTER_DIE_124005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124005", action = "action_EVENT_ANY_MONSTER_DIE_124005" },
	{ name = "GADGET_CREATE_124006", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_124006", action = "action_EVENT_GADGET_CREATE_124006", trigger_count = 0 },
	{ name = "SELECT_OPTION_124007", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_124007", action = "action_EVENT_SELECT_OPTION_124007", trigger_count = 0 }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 124002 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_124004", "ANY_MONSTER_DIE_124005", "GADGET_CREATE_124006", "SELECT_OPTION_124007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_124004(context, evt)
	if 124002 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_124004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 124001, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_124005(context, evt)
	if 124001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_124005(context, evt)
	-- 创建id为124003的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 124003 }) then
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 3, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_124006(context, evt)
	if 124002 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_124006(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133103124, 124002, {173}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_124007(context, evt)
	-- 判断是gadgetid 124002 option_id 173
	if 124002 ~= evt.param1 then
		return false	
	end
	
	if 173 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_124007(context, evt)
	-- 将configid为 124002 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124002, GadgetState.GearStart) then
			return -1
		end 
	
	-- 删除指定group： 133103124 ；指定config：124002；物件身上指定option：173；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133103124, 124002, 173) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2002, 1, 1) then
	      return -1
	    end
	
	return 0
end
