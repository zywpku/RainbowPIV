function [AAE,stdAng,EPE] = compareFlow( gr_uv, uv, x_begin, x_end, y_begin, ...
    y_end, z_begin, z_end, border )
    
    [AAE,stdAng] = flowAngErr( gr_uv(x_begin:x_end,y_begin:y_end,z_begin:z_end,1), ...
        gr_uv(x_begin:x_end,y_begin:y_end,z_begin:z_end,2), ...
        gr_uv(x_begin:x_end,y_begin:y_end,z_begin:z_end,3), ...
        uv(:,:,:,1), uv(:,:,:,2), uv(:,:,:,3), border );
    
    EPE = flowEndPointErr( gr_uv(x_begin:x_end,y_begin:y_end,z_begin:z_end,1)...
        , gr_uv(x_begin:x_end,y_begin:y_end,z_begin:z_end,2), ...
        gr_uv(x_begin:x_end,y_begin:y_end,z_begin:z_end,3),...
        uv(:,:,:,1), uv(:,:,:,2), uv(:,:,:,3), border );

end