UPDATE settings set is_language = true;
DELETE FROM settings WHERE settings_key = 'exposureConfig';
INSERT INTO settings(settings_key, settings_value, is_language) VALUES('exposureConfig', '{\"minimumRiskScore\":1,\"attenuationLevelValues\":[2,3,4,5,6,7,8,8],\"attenuationWeight\":1,\"daysSinceLastExposureLevelValues\":[1,1,1,1,1,1,1,1],\"daysSinceLastExposureWeight\":1,\"durationLevelValues\":[1,1,1,1,1,1,1,1],\"durationWeight\":1,\"transmissionRiskLevelValues\":[1,1,1,1,1,1,1,1],\"transmissionRiskWeight\":1, \"durationAtAttenuationThresholds\": [56,62],\"thresholdWeightings\":[1,1,0],\"timeThreshold\":10}', false);
