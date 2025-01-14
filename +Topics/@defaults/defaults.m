% Class for convenient handling of all the default topics used in Topics package 
% when you don't pass the topics manually.
%
% See also select,merge,consolidate,plot_generic,cut,demote,promote
classdef defaults
    %Class for convenient handling of all the topics used in our libraries
    
    properties (Constant)
    %% Topic names
    
    % For data captured inside of the device (i.e. Raspberry pi topics).
    internal={...
    ... %Ankle signals...
    'ankle.joint_state',...
    'ankle.torque_setpoint',...
    'ankle.set_current',...
    'ankle.scaled_params',...
    ... %Knee signals ...
    'knee.joint_state',...
    'knee.torque_setpoint',...
    'knee.set_current',...
    'knee.scaled_params',...
    ... %Hip joint ...
    'hip.joint_state',...
    'hip.torque_setpoint',...
    ... %z joint ...
    'z.joint_state',...
    'z.torque_setpoint',...
    ... %Fsm ...
    'fsm.State', ...
    'ARJoint_1.tipFSR',...
    'imu.foot.Euler' ,...
    'imu.shank.Euler' ,...
    'imu.thigh.Euler' ,...
    'loadcell.load_cell_readings', ...
    'loadcell.wrench', ...
    ... % Add new topics for rpi_remote IMU's ...
    'imu.foot.Accel', ...
    'imu.foot.Gyro', ...
    'imu.foot.Compass', ...
    'imu.foot.Quaternion', ...
    'imu.shank.Accel', ...
    'imu.shank.Gyro', ...
    'imu.shank.Compass', ...
    'imu.shank.Quaternion',...
    'imu.thigh.Accel', ...
    'imu.thigh.Gyro', ...
    'imu.thigh.Compass', ... 
    'imu.thigh.Quaternion', ...
    'imu.trunk.Accel', ...
    'imu.trunk.Gyro', ...
    'imu.trunk.Compass', ... 
    'imu.trunk.Quaternion' ...
        
   
    };

    % For data captured outside of the device (e.g. trigno, biometrics,
    % etc).
    external={
    'delsys.Foot.ACC.X',...
    'delsys.Foot.ACC.Y',...
    'delsys.Foot.ACC.Z',...
    'delsys.Shank.ACC.X',...
    'delsys.Shank.ACC.Y',...
    'delsys.Shank.ACC.Z',...
    'delsys.Thigh.ACC.X',...
    'delsys.Thigh.ACC.Y',...
    'delsys.Thigh.ACC.Z',...
    ... % Delsys System ...
    'delsys.R_GLUTEUS_MEDIUS.EMG',...
    'delsys.R_ILIOPSOAS.EMG',...
    'delsys.L_GLUTEUS_MEDIUS.EMG',...
    'delsys.L_BICEPS_FEMORIS.EMG',...
    'delsys.L_RECTUS_FEMORIS.EMG'...
    
     };
 
    
    fields=[Topics.defaults.internal Topics.defaults.external];
    
    end
    
    methods (Static)                         
       out = rostopics2fields(topiclist);
    
    end
    
end

