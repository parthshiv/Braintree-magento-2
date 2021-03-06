TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER trg_catalog_product_entity_tier_price_after_insert AFTER INSERT ON catalog_product_entity_tier_price FOR EACH ROW\nBEGIN\nINSERT IGNORE INTO `scconnector_google_feed_cl` (`entity_id`) VALUES (NEW.`entity_id`);\nEND' 'CREATE DEFINER=`root`@`%` TRIGGER trg_catalog_product_entity_tier_price_after_update AFTER UPDATE ON catalog_product_entity_tier_price FOR EACH ROW\nBEGIN\nIF (NEW.`value_id` <=> OLD.`value_id` OR NEW.`entity_id` <=> OLD.`entity_id` OR NEW.`all_groups` <=> OLD.`all_groups` OR NEW.`customer_group_id` <=> OLD.`customer_group_id` OR NEW.`qty` <=> OLD.`qty` OR NEW.`value` <=> OLD.`value` OR NEW.`website_id` <=> OLD.`website_id` OR NEW.`percentage_value` <=> OLD.`percentage_value`) THEN INSERT IGNORE INTO `scconnector_google_feed_cl` (`entity_id`) VALUES (NEW.`entity_id`); END IF;\nEND' 'CREATE DEFINER=`root`@`%` TRIGGER trg_catalog_product_entity_tier_price_after_delete AFTER DELETE ON catalog_product_entity_tier_price FOR EACH ROW\nBEGIN\nINSERT IGNORE INTO `scconnector_google_feed_cl` (`entity_id`) VALUES (OLD.`entity_id`);\nEND'
sql_modes=0 0 0
definers='root@%' 'root@%' 'root@%'
client_cs_names='utf8' 'utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=157325986892 157325986901 157325986904
