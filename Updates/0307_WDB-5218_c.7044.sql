-- Black Drake 7044
-- custom made paths corrected 
UPDATE creature SET position_x = -8237.176, position_y = -2684.231, position_z = 135.23209, movementtype = 4, spawndist = 0 WHERE guid = 5505; -- linear
UPDATE creature SET position_x = -8123.1816, position_y = -3010.6086, position_z = 134.71075, movementtype = 4, spawndist = 0 WHERE guid = 3298; -- linear
UPDATE creature SET position_x = -7561.112, position_y = -2696.0974, position_z = 135.42233, movementtype = 4, spawndist = 0 WHERE guid = 3299; -- linear
DELETE FROM creature_movement WHERE Id IN (5505,3298,3299);
INSERT INTO creature_movement (id, point, positionx, positiony, positionz, orientation, waittime, scriptid) VALUES
-- 5505
(5505,1 ,-8237.176,-2684.231,135.23209,100,1000,0),
(5505,2 ,-8207.56,-2712.9612,134.94687,100,0,0),
(5505,3 ,-8199.028,-2747.6282,135.48915,100,0,0),
(5505,4 ,-8188.164,-2779.7593,137.04665,100,0,0),
(5505,5 ,-8160.1494,-2817.244,135.25372,100,0,0),
(5505,6 ,-8147.127,-2844.7397,134.19147,100,0,0),
(5505,7 ,-8143.2163,-2888.3367,135.50519,100,0,0),
(5505,8 ,-8113.307,-2899.6895,134.38165,100,0,0),
(5505,9 ,-8076.1094,-2888.6902,136.71173,100,0,0),
(5505,10,-8043.5947,-2900.3809,134.00684,100,1000,0),
-- 3298
(3298,1 ,-8123.1816,-3010.6086,134.71075,100,1000,0),
(3298,2 ,-8096.231,-2979.5752,134.62573,100,0,0),
(3298,3 ,-8093.461,-2976.949,135.13782,100,0,0),
(3298,4 ,-8070.418,-2949.2793,134.96436,100,0,0),
(3298,5 ,-8029.4185,-2950.0798,131.85631,100,0,0),
(3298,6 ,-8004.0337,-2927.1172,135.04985,100,0,0),
(3298,7 ,-7978.8604,-2907.4763,135.18822,100,0,0),
(3298,8 ,-7942.4834,-2910.314,132.02855,100,0,0),
(3298,9 ,-7908.6235,-2907.3774,133.28867,100,0,0),
(3298,10,-7872.0415,-2896.6013,133.24557,100,0,0),
(3298,11,-7855.9463,-2915.6008,131.1402,100,0,0),
(3298,12,-7833.6963,-2933.7869,130.68336,100,0,0),
(3298,13,-7811.183,-2943.0667,131.36478,100,0,0),
(3298,14,-7782.134,-2957.7583,131.82463,100,0,0),
(3298,15,-7758.58,-2958.6875,133.226,100,1000,0),
-- 3299
(3299,1 ,-7561.112,-2696.0974,135.42233,100,1000,0),
(3299,2 ,-7584.803,-2720.6313,134.19186,100,0,0),
(3299,3 ,-7587.231,-2757.031,133.33365,100,0,0),
(3299,4 ,-7595.4165,-2777.4578,133.45833,100,0,0),
(3299,5 ,-7622.7847,-2807.4326,134.05086,100,0,0),
(3299,6 ,-7634.6885,-2847.6252,134.15295,100,0,0),
(3299,7 ,-7637.026,-2873.7476,134.74449,100,0,0),
(3299,8 ,-7653.513,-2909.5364,134.00693,100,0,0),
(3299,9 ,-7676.5835,-2940.422,131.74237,100,0,0),
(3299,10,-7716.7954,-2940.0413,133.39062,100,0,0),
(3299,11,-7727.008,-2916.5728,133.5347,100,0,0),
(3299,12,-7752.297,-2910.4277,132.56804,100,0,0),
(3299,13,-7762.3423,-2879.1357,133.29114,100,0,0),
(3299,14,-7770.4253,-2874.6057,133.50398,100,0,0),
(3299,15,-7809.934,-2863.888,133.564,100,1000,0);

