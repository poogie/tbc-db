-- Foreman Marcrid 1844
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE id = 1844;
DELETE FROM creature_movement WHERE id = 49769;
DELETE FROM creature_movement_template WHERE Entry = 1844;
INSERT INTO creature_movement_template (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES
(1844,1,2431.15,-1696.35,102.791,100,0,0),
(1844,2,2439.33,-1686.14,104.063,100,0,0),
(1844,3,2446,-1673.83,103.135,100,0,0),
(1844,4,2457.31,-1666.52,103.127,100,0,0),
(1844,5,2456.87,-1656.37,103.127,100,0,0),
(1844,6,2450.07,-1658.12,103.127,100,0,0),
(1844,7,2446.14,-1656.31,104.571,100,0,0),
(1844,8,2423.21,-1644.33,103.595,100,0,0),
(1844,9,2431.95,-1627.92,105.91,100,0,0),
(1844,10,2449.69,-1627.84,106.62,100,0,0),
(1844,11,2434.55,-1624.78,106.376,100,0,0),
(1844,12,2419.37,-1629,106.162,100,0,0),
(1844,13,2408.14,-1651.45,105.367,100,0,0),
(1844,14,2416.91,-1670.81,103.009,100,0,0),
(1844,15,2426.55,-1680.31,102.352,100,0,0),
(1844,16,2427.26,-1692.67,102.646,100,0,0);

