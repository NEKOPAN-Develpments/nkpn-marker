Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)

        for _, markerInfo in ipairs(Config.Markers) do
            
            local marker = markerInfo.mainmarker.marker

            local scale = markerInfo.mainmarker.scale

            local height = markerInfo.mainmarker.height

            local coord_x = markerInfo.mainmarker.coords.x
            local coord_y = markerInfo.mainmarker.coords.y
            local coord_z = markerInfo.mainmarker.coords.z
            
            local rgba_1 = markerInfo.rgba[1]
            local rgba_2 = markerInfo.rgba[2]
            local rgba_3 = markerInfo.rgba[3]
            local rgba_4 = markerInfo.rgba[4]
            
            DrawMarkers(marker,scale,height,coord_x,coord_y,coord_z-1.0,rgba_1,rgba_2,rgba_3,rgba_4)

            if markerInfo.submarker ~= nil then

                local submarker = markerInfo.submarker.marker
                local sub_coords_z = markerInfo.submarker.posz
                local sub_height = scale
        
                DrawMarkers(submarker,scale/2,sub_height,coord_x,coord_y,sub_coords_z,rgba_1,rgba_2,rgba_3,rgba_4)
            end
        end
    end
end)


function DrawMarkers(marker,scale,height,coord_x,coord_y,coord_z,rgba_1,rgba_2,rgba_3,rgba_4)
    DrawMarker(
        marker,  -- kind of marker
        coord_x,
        coord_y,
        coord_z,
        0.0,
        0.0,
        0.0,
        0.0,
        0.0,
        0.0,
        scale,
        scale,
        height,
        rgba_1,
        rgba_2,
        rgba_3,
        rgba_4,
        false,
        true,
        2,
        nil,
        nil,
        false
    )
end