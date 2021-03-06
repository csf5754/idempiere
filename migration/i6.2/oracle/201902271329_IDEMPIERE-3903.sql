SET SQLBLANKLINES ON
SET DEFINE OFF

-- IDEMPIERE-3903 Notification Type tries to default to Email
-- Feb 27, 2019, 1:26:46 PM CET
UPDATE AD_Column SET DefaultValue='X',Updated=TO_DATE('2019-02-27 13:26:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=13773
;

-- Feb 27, 2019, 1:26:48 PM CET
ALTER TABLE AD_User MODIFY NotificationType CHAR(1) DEFAULT 'X'
;

-- Feb 27, 2019, 1:26:48 PM CET
UPDATE AD_User SET NotificationType='X' WHERE NotificationType IS NULL
;

SELECT register_migration_script('201902271329_IDEMPIERE-3903.sql') FROM dual
;

