-- 米港钓鱼垃圾
local menethilTrashes={
	[6361]=true,[6359]=true
}

-- 塔纳利斯钓鱼垃圾
local tanarisTrashes={
	[13876]=true,[13877]=true,[13754]=true,
	[4603]=true,[6362]=true,[13756]=true,
	[6359]=true,[13875]=true,
	[7974]=true,[5498]=true,[5500]=true,[7971]=true
}

-- 艾萨拉钓鱼删除垃圾
local azsharaTrashes={
	[13893]=true,[13888]=true,[4603]=true,[13756]=true,
	[6359]=true,
	[7974]=true,[5498]=true,[5500]=true,[7971]=true
}

-- 删除函数
function filterTrashes( ... )
	for b=0,4,1 do 
		for s =1,32,1 do 
			local id=select(10, GetContainerItemInfo(b,s)) 
			if menethilTrashes[id] or tanarisTrashes[id] or azsharaTrashes[id] then 
				PickupContainerItem(b,s)
				DeleteCursorItem() 
			end 
		end 
	end
end