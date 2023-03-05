-- Trigger变量
local defs = {
	group_id = 133102433,
	gadget_target_1 = 433003,
	monster_mole_1 = 433001,
	gadget_home_1 = 433004
}


--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 433001, monster_id = 28050201, pos = { x = 1757.4, y = 220.6, z = 646.8 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 32, drop_tag = "魔法生物" },
	{ config_id = 433002, monster_id = 28050201, pos = { x = 1769.8, y = 220.5, z = 652.9 }, rot = { x = 0.0, y = 29.5, z = 0.0 }, level = 32, drop_tag = "魔法生物", pose_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 433003, gadget_id = 70360027, pos = { x = 1769.9, y = 220.4, z = 652.7 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 32 },
	{ config_id = 433004, gadget_id = 70360015, pos = { x = 1757.2, y = 220.4, z = 646.8 }, rot = { x = 0.0, y = 104.1, z = 0.0 }, level = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_433005", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_433005", action = "action_EVENT_ANY_MONSTER_DIE_433005" },
	{ name = "SELECT_OPTION_433006", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_433006", action = "action_EVENT_SELECT_OPTION_433006", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_433007", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_433007", action = "action_EVENT_GADGET_STATE_CHANGE_433007", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_433008", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_433008", action = "action_EVENT_GADGET_STATE_CHANGE_433008", trigger_count = 0 },
	{ name = "GROUP_LOAD_433009", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_433009", trigger_count = 0 },
	{ name = "GADGET_STATE_CHANGE_433010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_433010", action = "action_EVENT_GADGET_STATE_CHANGE_433010", trigger_count = 0 }
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
	end_suite = 2,
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
		monsters = { 433001 },
		gadgets = { 433003, 433004 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_433005", "SELECT_OPTION_433006", "GADGET_STATE_CHANGE_433007", "GADGET_STATE_CHANGE_433008", "GROUP_LOAD_433009", "GADGET_STATE_CHANGE_433010" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 3,
		-- description = suite_3,
		monsters = { 433002 },
		gadgets = { },
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_433005(context, evt)
	--判断死亡怪物的configid是否为 433002
	if evt.param1 ~= 433002 then
	    return false
	 end
	  
	
	--判断死亡怪物的死亡类型是否为0，0为普通死亡（比如被击杀），1为普通地被killself杀死，2为消失（比如小动物逃跑消失，北风狼脱战消失）
	if evt.param2 ~= 0 then
	    return false
	 end
	
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_433005(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 3, 1) then
	      return -1
	    end
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 133102433, 2) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_433006(context, evt)
	-- 判断是gadgetid 433004 option_id 171
	if 433004 ~= evt.param1 then
		return false	
	end
	
	if 171 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_433006(context, evt)
	-- 改变指定group组133102433中， configid为433004的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133102433, 433004, GadgetState.GearAction2) then
			return -1
		end 
	
	-- 删除指定group： 133102433 ；指定config：433004；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133102433, 433004, 171) then
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2006, 1, 1) then
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_433007(context, evt)
	if 433004 ~= evt.param2 or GadgetState.GearAction1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_433007(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133102433, 433004, {171}) then
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_433008(context, evt)
	if 433003 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_433008(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133102433, 3)
	
	-- 将configid为 433004 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 433004, GadgetState.GearStart) then
			return -1
		end 
	
	return 0
end

-- 触发条件

-- 触发操作
function action_EVENT_GROUP_LOAD_433009(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 433001, delay_time = 0 }) then
	  return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133102433, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_433010(context, evt)
	if 433004 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_433010(context, evt)
	--如果鼹鼠洞发射子弹5秒后，没有到达终点，（到达终点的情况下会改动这个鼹鼠洞到GearStart状态，就不会走到这里）
	--没有到达终点的情况下，将鼹鼠洞重新设置回到GearAction1的状态
	
	--这里判断鼹鼠终点的状态，如果是没有刷新鼹鼠的Default状态，则回滚设置鼹鼠洞为可以调查的GearAction1状态，
	if GadgetState.Default == ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_target_1) then
	 ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_home_1, GadgetState.GearAction1)
	
	elseif GadgetState.GearStart == ScriptLib.GetGadgetStateByConfigId(context, 0, defs.gadget_target_1) then
	
	 ScriptLib.SetGadgetStateByConfigId(context, defs.gadget_home_1, GadgetState.GearStart)
	
	end
	
	
	
	
	return 0
end
