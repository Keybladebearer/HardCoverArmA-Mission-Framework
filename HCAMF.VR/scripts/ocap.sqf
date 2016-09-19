//This calls OCAP to dump the mission data for playback. DO NOT FUCK WITH IT!!!!!!!

if (isServer) then {
    _export = [] spawn ocap_fnc_exportData;
};