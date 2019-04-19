-- Add sniff Faction for Contested Banner Gameobjects
-- Added No despawn where it was visible in sniff, its possible that all should have it
UPDATE `gameobject_template` SET `Faction` = 83 WHERE `entry` IN (
178935,
178940,
179304,
179308,
179445,
179449,
179453,
179466,
179471,
179482
);

UPDATE `gameobject_template` SET `Faction` = 83, `flags` = 32 WHERE `entry` IN (
180059,
180069,
180073,
180077,
180085,
180092,
180094,
180096,
180098,
180419
);

UPDATE `gameobject_template` SET `Faction` = 84 WHERE `entry` IN (
179305,
179443,
180086,
180097,
179307,
179310,
179484,
180420,
179473
);

UPDATE `gameobject_template` SET `Faction` = 84, `flags` = 32 WHERE `entry` IN (
180061,
180065,
180067,
180071,
180075,
180079,
180093,
180095,
180099
);

