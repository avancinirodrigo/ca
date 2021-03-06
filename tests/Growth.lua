-- Test file for Growth.lua
-- Author: Pedro R. Andrade

return{
	Growth = function(unitTest)
		local model = Growth{
			finalTime = 5,
			dim = 20,
			probability = 0.4
		}

		unitTest:assertSnapshot(model.map, "Growth-map-1-begin.bmp", 0.1)

		model:run()

		unitTest:assertSnapshot(model.map, "Growth-map-1-end.bmp", 0.1)
	end,
}

