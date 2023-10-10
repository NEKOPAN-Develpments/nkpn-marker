Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)

        for _, markerInfo in ipairs(Config.Markers) do
            
            local marker = markerInfo.mainmarker.marker

            local coord_x = markerInfo.mainmarker.coords.x
            local coord_y = markerInfo.mainmarker.coords.y
            local coord_z = markerInfo.mainmarker.coords.z

            local scale = markerInfo.mainmarker.scale
            local height = markerInfo.mainmarker.height
            
            local rgba_1 = markerInfo.rgba[1]
            local rgba_2 = markerInfo.rgba[2]
            local rgba_3 = markerInfo.rgba[3]
            local rgba_4 = markerInfo.rgba[4]
            
            DrawMarkers(
                marker,
                coord_x,
                coord_y,
                coord_z - 1.0,
                scale,
                height,
                rgba_1,
                rgba_2,
                rgba_3,
                rgba_4
            )

            if markerInfo.submarker ~= nil then

                local submarker = markerInfo.submarker.marker
                local sub_coords_z = markerInfo.submarker.posz
                local sub_scale = scale / 1.5
                local sub_height =  scale / 1.5
                -- local sub_height = markerInfo.submarker.height
        
                DrawMarkers(
                    submarker,
                    coord_x,
                    coord_y,
                    sub_coords_z,
                    sub_scale,
                    sub_height,
                    rgba_1,
                    rgba_2,
                    rgba_3,
                    rgba_4
                )
            end
        end
    end
end)


function DrawMarkers(marker,coord_x,coord_y,coord_z,scale,height,rgba_1,rgba_2,rgba_3,rgba_4)
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