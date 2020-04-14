local name, _FishingFilter = ...;
local fishes = _FishingFilter.fishes;
local trashes = _FishingFilter.trashes;

-- 删除函数
function filterTrashes( ... )
	for b=0,4,1 do 
		for s =1,32,1 do 
			local id=select(10, GetContainerItemInfo(b,s)) 
			if (fishes[id] and fishes[id].delete) or (trashes[id] and trashes[id].delete) then 
				PickupContainerItem(b,s)
				DeleteCursorItem() 
			end 
		end 
	end
end