
--------------------------------
-- @module OrbitCameraPoker
-- @extend ActionCamera
-- @parent_module cc

--------------------------------
--  initializes a OrbitCamera action with radius, delta-radius,  z, deltaZ, x, deltaX 
-- @function [parent=#OrbitCameraPoker] initWithDuration 
-- @param self
-- @param #float t
-- @param #float radius
-- @param #float deltaRadius
-- @param #float angleZ
-- @param #float deltaAngleZ
-- @param #float angleX
-- @param #float deltaAngleX
-- @return bool#bool ret (return value: bool)
        
--------------------------------
--  creates a OrbitCamera action with radius, delta-radius,  z, deltaZ, x, deltaX 
-- @function [parent=#OrbitCameraPoker] create 
-- @param self
-- @param #float t
-- @param #float radius
-- @param #float deltaRadius
-- @param #float angleZ
-- @param #float deltaAngleZ
-- @param #float angleX
-- @param #float deltaAngleX
-- @return OrbitCameraPoker#OrbitCameraPoker ret (return value: cc.OrbitCameraPoker)
        
--------------------------------
-- 
-- @function [parent=#OrbitCameraPoker] startWithTarget 
-- @param self
-- @param #cc.Node target
        
--------------------------------
-- 
-- @function [parent=#OrbitCameraPoker] clone 
-- @param self
-- @return OrbitCameraPoker#OrbitCameraPoker ret (return value: cc.OrbitCameraPoker)
        
--------------------------------
-- 
-- @function [parent=#OrbitCameraPoker] update 
-- @param self
-- @param #float time
        
--------------------------------
-- 
-- @function [parent=#OrbitCameraPoker] OrbitCameraPoker 
-- @param self
        
return nil
