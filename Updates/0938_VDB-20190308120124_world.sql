-- Add your query below.
-- https://github.com/vmangos/core/commit/d4d8fdb3738728e4502e9fe1ede5477783a6cc63

-- Reimplement Path for Twilight Marauder Morna & Twilight Marauder
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (43202,43203);
DELETE FROM `creature_movement` WHERE `id` IN (43202,43203);
REPLACE INTO `creature_spawn_data` (`guid`, `id`) VALUES (43201, 1),(43202, 1),(43203, 1);
UPDATE `creature_linking_template` SET `flag` = `flag`|512|1024|16384 WHERE `master_entry` = 15541; -- FLAG_FOLLOW + FLAG_CANT_SPAWN_IF_BOSS_DEAD + FLAG_EVADE_ON_EVADE (currently needed not sure why)
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1554101; -- Run on for whole troup
DELETE FROM `creature_movement_template` WHERE `entry` = 15541; -- 43201 (this path seems to be better refined)
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `orientation`) VALUES 
(15541, 1, -6376.62, 532.586, 6.06976, 0, 0, 100),
(15541, 2, -6387.27, 525.77, 6.35716, 0, 0, 100),
(15541, 3, -6416.95, 509.164, 5.29412, 0, 0, 100),
(15541, 4, -6445.69, 492.734, 1.94094, 0, 0, 100),
(15541, 5, -6483.23, 472.67, 3.52189, 0, 0, 100),
(15541, 6, -6519.05, 453.525, 2.34013, 0, 0, 100),
(15541, 7, -6554.3, 434.684, 1.04742, 0, 0, 100),
(15541, 8, -6584.35, 429.941, 1.80209, 0, 0, 100),
(15541, 9, -6620.88, 428.329, 2.73216, 0, 0, 100),
(15541, 10, -6663.1, 406.433, -1.48879, 0, 0, 100),
(15541, 11, -6685.12, 378.508, 0.955679, 0, 0, 100),
(15541, 12, -6696.41, 344.444, 0.387129, 0, 0, 100),
(15541, 13, -6719.44, 291.326, 2.04654, 0, 0, 100),
(15541, 14, -6741.37, 252.316, 2.68882, 0, 0, 100),
(15541, 15, -6769.02, 244.972, 3.3158, 0, 0, 100),
(15541, 16, -6785.68, 253.065, 5.00806, 0, 0, 100),
(15541, 17, -6782.69, 284.491, 4.91503, 0, 0, 100),
(15541, 18, -6773.95, 328.981, 8.47466, 0, 0, 100),
(15541, 19, -6769.03, 370.552, 13.9287, 0, 0, 100),
(15541, 20, -6777.04, 417.475, 11.523, 0, 0, 100),
(15541, 21, -6781.94, 458.888, 7.05425, 0, 0, 100),
(15541, 22, -6790.14, 494.422, 3.73162, 0, 0, 100),
(15541, 23, -6800.34, 532.114, -1.06189, 0, 0, 100),
(15541, 24, -6809.64, 553.533, -0.356654, 0, 0, 100),
(15541, 25, -6847.89, 559.094, -0.394849, 0, 0, 100),
(15541, 26, -6886.14, 547.396, 3.76678, 0, 0, 100),
(15541, 27, -6925.27, 532.369, 6.66372, 0, 0, 100),
(15541, 28, -6949.36, 513.445, 6.54218, 0, 0, 100),
(15541, 29, -6976.83, 506.276, 7.3713, 0, 0, 100),
(15541, 30, -7006.37, 501.558, 8.82952, 0, 0, 100),
(15541, 31, -7030.57, 488.433, 8.94151, 0, 0, 100),
(15541, 32, -7048.7, 468.955, 9.32741, 0, 0, 100),
(15541, 33, -7070.05, 435.786, 8.11191, 0, 0, 100),
(15541, 34, -7090.8, 406.883, 8.43883, 0, 0, 100),
(15541, 35, -7104.42, 437.147, 5.38228, 0, 0, 100),
(15541, 36, -7115.82, 465.969, 6.36439, 0, 0, 100),
(15541, 37, -7124.66, 484.238, 4.15057, 0, 0, 100),
(15541, 38, -7158.1, 517.582, 8.64527, 0, 0, 100),
(15541, 39, -7182.09, 552.671, 6.43171, 0, 0, 100),
(15541, 40, -7214.69, 603.063, 3.59552, 0, 0, 100),
(15541, 41, -7246.73, 668.799, 11.0092, 0, 0, 100),
(15541, 42, -7266.4, 749.662, 3.63041, 0, 0, 100),
(15541, 43, -7277.07, 781.773, 2.1908, 0, 0, 100),
(15541, 44, -7287.66, 812.315, 0.393271, 0, 0, 100),
(15541, 45, -7305.69, 864.325, 1.66148, 0, 0, 100),
(15541, 46, -7316.1, 928.415, 0.639546, 0, 0, 100),
(15541, 47, -7321.97, 970.478, 1.33826, 0, 0, 100),
(15541, 48, -7355.4, 996.145, 1.42357, 0, 0, 100),
(15541, 49, -7379.55, 994.329, 1.33889, 0, 0, 100),
(15541, 50, -7415.38, 999.745, 0.944734, 0, 0, 100),
(15541, 51, -7467.77, 1017.2, 1.74277, 0, 0, 100),
(15541, 52, -7511.61, 1027.23, 2.30124, 0, 0, 100),
(15541, 53, -7561.11, 1038.43, 3.54908, 0, 0, 100),
(15541, 54, -7606.02, 1040.73, 4.51907, 0, 0, 100),
(15541, 55, -7650.09, 1048.19, 5.14361, 0, 0, 100),
(15541, 56, -7687.37, 1083.46, 3.58373, 0, 0, 100),
(15541, 57, -7724.36, 1121.49, 1.90764, 0, 0, 100),
(15541, 58, -7750.87, 1156.73, 0.618798, 0, 0, 100),
(15541, 59, -7774.1, 1201.45, -1.32649, 0, 0, 100),
(15541, 60, -7791.54, 1236.7, -5.64483, 0, 0, 100),
(15541, 61, -7816.35, 1278.61, -11.5483, 0, 0, 100),
(15541, 62, -7788.67, 1235.35, -5.42427, 0, 0, 100),
(15541, 63, -7762.72, 1176.16, -0.220853, 0, 0, 100),
(15541, 64, -7734.26, 1133.04, 1.39474, 0, 0, 100),
(15541, 65, -7695.28, 1087.65, 3.28412, 0, 0, 100),
(15541, 66, -7664.04, 1052.89, 4.89814, 0, 0, 100),
(15541, 67, -7613.22, 1040.97, 4.43653, 0, 0, 100),
(15541, 68, -7571.66, 1037.35, 3.70825, 0, 0, 100),
(15541, 69, -7531.33, 1029.95, 2.92627, 0, 0, 100),
(15541, 70, -7486.96, 1020.25, 1.91307, 0, 0, 100),
(15541, 71, -7449.12, 1011.41, 1.5865, 0, 0, 100),
(15541, 72, -7403.82, 999.055, 1.19493, 0, 0, 100),
(15541, 73, -7354.93, 993.942, 1.60472, 0, 0, 100),
(15541, 74, -7317.92, 996.312, 1.93947, 0, 0, 100),
(15541, 75, -7282.3, 983.871, 3.67044, 0, 0, 100),
(15541, 76, -7281.69, 947.823, 1.63126, 0, 0, 100),
(15541, 77, -7304.65, 902.412, 2.45831, 0, 0, 100),
(15541, 78, -7304.54, 833.699, 0.729112, 0, 0, 100),
(15541, 79, -7297.67, 774.047, 3.79059, 0, 0, 100),
(15541, 80, -7300.44, 733.333, 3.6663, 0, 0, 100),
(15541, 81, -7283.36, 682.183, 3.28548, 0, 0, 100),
(15541, 82, -7263.38, 635.616, 2.59161, 0, 0, 100),
(15541, 83, -7241.43, 584.445, 4.96418, 0, 0, 100),
(15541, 84, -7212.04, 552.558, 4.24255, 0, 0, 100),
(15541, 85, -7158.34, 523.197, 7.94478, 0, 0, 100),
(15541, 86, -7109.59, 471.621, 6.72994, 0, 0, 100),
(15541, 87, -7086.48, 406.288, 8.32352, 0, 0, 100),
(15541, 88, -7064.68, 437.452, 8.69945, 0, 0, 100),
(15541, 89, -7035.86, 481.033, 9.21304, 0, 0, 100),
(15541, 90, -6994.34, 502.754, 8.312, 0, 0, 100),
(15541, 91, -6946.36, 520.584, 6.99135, 0, 0, 100),
(15541, 92, -6904.32, 541.751, 5.53994, 0, 0, 100),
(15541, 93, -6855.34, 554.16, 0.750251, 0, 0, 100),
(15541, 94, -6809.42, 552.665, -0.369408, 0, 0, 100),
(15541, 95, -6796.44, 511.72, 0.841312, 0, 0, 100),
(15541, 96, -6782.51, 463.91, 6.94964, 0, 0, 100),
(15541, 97, -6774.89, 418.113, 11.6111, 0, 0, 100),
(15541, 98, -6769.24, 375.026, 13.8058, 0, 0, 100),
(15541, 99, -6767.43, 329.882, 7.89159, 0, 0, 100),
(15541, 100, -6779.83, 284.361, 4.80784, 0, 0, 100),
(15541, 101, -6764.96, 255.943, 2.85304, 0, 0, 100),
(15541, 102, -6734.39, 250.937, 2.59512, 0, 0, 100),
(15541, 103, -6685.52, 289.842, 3.1177, 0, 0, 100),
(15541, 104, -6645.88, 321.396, 3.33683, 0, 0, 100),
(15541, 105, -6628.94, 362.372, -1.76605, 0, 0, 100),
(15541, 106, -6592.79, 378.848, 0.064779, 0, 0, 100),
(15541, 107, -6527.53, 404.175, 5.6139, 0, 0, 100),
(15541, 108, -6481.06, 441.67, 4.66501, 0, 0, 100),
(15541, 109, -6450.14, 483.913, 0.694338, 0, 0, 100),
(15541, 110, -6408.04, 512.157, 5.75038, 0, 0, 100),
(15541, 111, -6378.96, 531.537, 6.06892, 0, 0, 100),
(15541, 112, -6357.9, 542.033, 7.97328, 0, 0, 100),
(15541, 113, -6357.9, 542.033, 7.97328, 0, 0, 100),
(15541, 114, -6378.96, 531.537, 6.06892, 0, 0, 100),
(15541, 115, -6408.04, 512.157, 5.75038, 0, 0, 100),
(15541, 116, -6450.14, 483.913, 0.694338, 0, 0, 100),
(15541, 117, -6481.06, 441.67, 4.66501, 0, 0, 100),
(15541, 118, -6527.53, 404.175, 5.6139, 0, 0, 100),
(15541, 119, -6592.79, 378.848, 0.064779, 0, 0, 100),
(15541, 120, -6628.94, 362.372, -1.76605, 0, 0, 100),
(15541, 121, -6645.88, 321.396, 3.33683, 0, 0, 100),
(15541, 122, -6685.52, 289.842, 3.1177, 0, 0, 100),
(15541, 123, -6734.39, 250.937, 2.59512, 0, 0, 100),
(15541, 124, -6764.96, 255.943, 2.85304, 0, 0, 100),
(15541, 125, -6779.83, 284.361, 4.80784, 0, 0, 100),
(15541, 126, -6767.43, 329.882, 7.89159, 0, 0, 100),
(15541, 127, -6769.24, 375.026, 13.8058, 0, 0, 100),
(15541, 128, -6774.89, 418.113, 11.6111, 0, 0, 100),
(15541, 129, -6782.51, 463.91, 6.94964, 0, 0, 100),
(15541, 130, -6796.44, 511.72, 0.841312, 0, 0, 100),
(15541, 131, -6809.42, 552.665, -0.369408, 0, 0, 100),
(15541, 132, -6855.34, 554.16, 0.750251, 0, 0, 100),
(15541, 133, -6904.32, 541.751, 5.53994, 0, 0, 100),
(15541, 134, -6946.36, 520.584, 6.99135, 0, 0, 100),
(15541, 135, -6994.34, 502.754, 8.312, 0, 0, 100),
(15541, 136, -7035.86, 481.033, 9.21304, 0, 0, 100),
(15541, 137, -7064.68, 437.452, 8.69945, 0, 0, 100),
(15541, 138, -7086.48, 406.288, 8.32352, 0, 0, 100),
(15541, 139, -7109.59, 471.621, 6.72994, 0, 0, 100),
(15541, 140, -7158.34, 523.197, 7.94478, 0, 0, 100),
(15541, 141, -7212.04, 552.558, 4.24255, 0, 0, 100),
(15541, 142, -7241.43, 584.445, 4.96418, 0, 0, 100),
(15541, 143, -7263.38, 635.616, 2.59161, 0, 0, 100),
(15541, 144, -7283.36, 682.183, 3.28548, 0, 0, 100),
(15541, 145, -7300.44, 733.333, 3.6663, 0, 0, 100),
(15541, 146, -7297.67, 774.047, 3.79059, 0, 0, 100),
(15541, 147, -7304.54, 833.699, 0.729112, 0, 0, 100),
(15541, 148, -7304.65, 902.412, 2.45831, 0, 0, 100),
(15541, 149, -7281.69, 947.823, 1.63126, 0, 0, 100),
(15541, 150, -7282.3, 983.871, 3.67044, 0, 0, 100),
(15541, 151, -7317.92, 996.312, 1.93947, 0, 0, 100),
(15541, 152, -7354.93, 993.942, 1.60472, 0, 0, 100),
(15541, 153, -7403.82, 999.055, 1.19493, 0, 0, 100),
(15541, 154, -7449.12, 1011.41, 1.5865, 0, 0, 100),
(15541, 155, -7486.96, 1020.25, 1.91307, 0, 0, 100),
(15541, 156, -7531.33, 1029.95, 2.92627, 0, 0, 100),
(15541, 157, -7571.66, 1037.35, 3.70825, 0, 0, 100),
(15541, 158, -7613.22, 1040.97, 4.43653, 0, 0, 100),
(15541, 159, -7664.04, 1052.89, 4.89814, 0, 0, 100),
(15541, 160, -7695.28, 1087.65, 3.28412, 0, 0, 100),
(15541, 161, -7734.26, 1133.04, 1.39474, 0, 0, 100),
(15541, 162, -7762.72, 1176.16, -0.220853, 0, 0, 100),
(15541, 163, -7788.67, 1235.35, -5.42427, 0, 0, 100),
(15541, 164, -7816.35, 1278.61, -11.5483, 0, 0, 100),
(15541, 165, -7791.54, 1236.7, -5.64483, 0, 0, 100),
(15541, 166, -7774.1, 1201.45, -1.32649, 0, 0, 100),
(15541, 167, -7750.87, 1156.73, 0.618798, 0, 0, 100),
(15541, 168, -7724.36, 1121.49, 1.90764, 0, 0, 100),
(15541, 169, -7687.37, 1083.46, 3.58373, 0, 0, 100),
(15541, 170, -7650.09, 1048.19, 5.14361, 0, 0, 100),
(15541, 171, -7606.02, 1040.73, 4.51907, 0, 0, 100),
(15541, 172, -7561.11, 1038.43, 3.54908, 0, 0, 100),
(15541, 173, -7511.61, 1027.23, 2.30124, 0, 0, 100),
(15541, 174, -7467.77, 1017.2, 1.74277, 0, 0, 100),
(15541, 175, -7415.38, 999.745, 0.944734, 0, 0, 100),
(15541, 176, -7379.55, 994.329, 1.33889, 0, 0, 100),
(15541, 177, -7355.4, 996.145, 1.42357, 0, 0, 100),
(15541, 178, -7321.97, 970.478, 1.33826, 0, 0, 100),
(15541, 179, -7316.1, 928.415, 0.639546, 0, 0, 100),
(15541, 180, -7305.69, 864.325, 1.66148, 0, 0, 100),
(15541, 181, -7287.66, 812.315, 0.393271, 0, 0, 100),
(15541, 182, -7277.07, 781.773, 2.1908, 0, 0, 100),
(15541, 183, -7266.4, 749.662, 3.63041, 0, 0, 100),
(15541, 184, -7246.73, 668.799, 11.0092, 0, 0, 100),
(15541, 185, -7214.69, 603.063, 3.59552, 0, 0, 100),
(15541, 186, -7182.09, 552.671, 6.43171, 0, 0, 100),
(15541, 187, -7158.1, 517.582, 8.64527, 0, 0, 100),
(15541, 188, -7124.66, 484.238, 4.15057, 0, 0, 100),
(15541, 189, -7115.82, 465.969, 6.36439, 0, 0, 100),
(15541, 190, -7104.42, 437.147, 5.38228, 0, 0, 100),
(15541, 191, -7090.8, 406.883, 8.43883, 0, 0, 100),
(15541, 192, -7070.05, 435.786, 8.11191, 0, 0, 100),
(15541, 193, -7048.7, 468.955, 9.32741, 0, 0, 100),
(15541, 194, -7030.57, 488.433, 8.94151, 0, 0, 100),
(15541, 195, -7006.37, 501.558, 8.82952, 0, 0, 100),
(15541, 196, -6976.83, 506.276, 7.3713, 0, 0, 100),
(15541, 197, -6949.36, 513.445, 6.54218, 0, 0, 100),
(15541, 198, -6925.27, 532.369, 6.66372, 0, 0, 100),
(15541, 199, -6886.14, 547.396, 3.76678, 0, 0, 100),
(15541, 200, -6847.89, 559.094, -0.394849, 0, 0, 100),
(15541, 201, -6809.64, 553.533, -0.356654, 0, 0, 100),
(15541, 202, -6800.34, 532.114, -1.06189, 0, 0, 100),
(15541, 203, -6790.14, 494.422, 3.73162, 0, 0, 100),
(15541, 204, -6781.94, 458.888, 7.05425, 0, 0, 100),
(15541, 205, -6777.04, 417.475, 11.523, 0, 0, 100),
(15541, 206, -6769.03, 370.552, 13.9287, 0, 0, 100),
(15541, 207, -6773.95, 328.981, 8.47466, 0, 0, 100),
(15541, 208, -6782.69, 284.491, 4.91503, 0, 0, 100),
(15541, 209, -6785.68, 253.065, 5.00806, 0, 0, 100),
(15541, 210, -6769.02, 244.972, 3.3158, 0, 0, 100),
(15541, 211, -6741.37, 252.316, 2.68882, 0, 0, 100),
(15541, 212, -6719.44, 291.326, 2.04654, 0, 0, 100),
(15541, 213, -6696.41, 344.444, 0.387129, 0, 0, 100),
(15541, 214, -6685.12, 378.508, 0.955679, 0, 0, 100),
(15541, 215, -6663.1, 406.433, -1.48879, 0, 0, 100),
(15541, 216, -6620.88, 428.329, 2.73216, 0, 0, 100),
(15541, 217, -6584.35, 429.941, 1.80209, 0, 0, 100),
(15541, 218, -6554.3, 434.684, 1.04742, 0, 0, 100),
(15541, 219, -6519.05, 453.525, 2.34013, 0, 0, 100),
(15541, 220, -6483.23, 472.67, 3.52189, 0, 0, 100),
(15541, 221, -6445.69, 492.734, 1.94094, 0, 0, 100),
(15541, 222, -6416.95, 509.164, 5.29412, 0, 0, 100),
(15541, 223, -6387.27, 525.77, 6.35716, 0, 0, 100);

-- Add missing "after" script for quest Ogre Head On A Stick = Party.
-- https://classic.wowhead.com/quest=3825/ogre-head-on-a-stick-party
-- https://classic.wowhead.com/item=11079/gorteshs-lopped-off-head
UPDATE `broadcast_text` SET `ChatTypeID`=1 WHERE `ID` IN (4707, 4708, 4709, 4711, 4712); -- 4711 unused currently due to targeting in vmangos?

-- https://tbc.wowhead.com/spell=13488/firegut-fear-storm#comments:id=137624
-- in classic videos there is no object spawning anymore, just some quick lightning animation, and no reaction from ogres it seems
DELETE FROM `gameobject` WHERE `id` = 160839;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecsmin`, `spawntimesecsmax`, `animprogress`, `state`) VALUES
(98643, 160839, 0, -7944.79, -2639.03, 218.763, 0.611717, 0, 0, 0.301112, 0.953589, -25, -25, 100, 1); -- spawns 160842 which casts 13488 (mainly hits the ogres inside the cave, which will return to normal after 50secs)

-- Plant Gor'tesh Head 13484
DELETE FROM `dbscripts_on_event` WHERE `id` = 3561; -- event triggered by using Soft Dirt Mound 160840
INSERT INTO `dbscripts_on_event` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(3561, 0, 0, 9, 98643, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Plant Gor''tesh Head (i.11079,q.3825) - Soft Dirt Mound - Respawn Gor''tesh''s Lopped Off Head (160839)');

-- Improve Loot of i.Blackrock Medallion 11467
-- Change drop count of Blackrock Medallion to 3-10 instead of 3-3 for nearly all mobs.
-- Chance taken from CDB, can surely be improved further at some point
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33, `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 7025; -- -80	3	3	Blackrock Soldier
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33, `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 7026; -- -80	3	3	Blackrock Sorcerer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33, `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 7027; -- -80	3	3	Blackrock Slayer
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33, `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 7028; -- -80	3	3	Blackrock Warlock
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33, `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 7029; -- -80	3	3	Blackrock Battlemaster
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45, `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 7055; -- -80	3	3	Blackrock Worg
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45, `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 9690; -- -80	3	3	Ember Worg
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45, `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 9694; -- -80	3	3	Slavering Ember Worg
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45, `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 9697; -- -80	3	9	Giant Ember Worg
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33,/*going after cdb logic this one shouldve 45 too*/ `mincountorref` = 3, `maxcount` = 10 WHERE `item` = 11467 AND `entry` = 10077; -- -80	4	9	Deathmaw (only 1 drop on wowhead but had 4-9 befor and makes no sense)

-- End of migration.

