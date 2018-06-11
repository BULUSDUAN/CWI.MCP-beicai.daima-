#�޸��豸������1.΢���豸ID��2.�Ƿ���Ȩ��3.�Ƿ�ͨWiFi
ALTER TABLE `mcp_equipment`
ADD COLUMN `device_id` VARCHAR(64) NOT NULL COMMENT '΢���豸ID' AFTER `check_code`,   
ADD COLUMN `is_auth` INT(11) NOT NULL DEFAULT '0' COMMENT '�Ƿ���Ȩ:0-δ��Ȩ,1-����Ȩ;' AFTER `is_bind` ,
ADD COLUMN `is_open_wifi` INT(11) NOT NULL COMMENT '�Ƿ�ͨWiFi:0-δ��ͨ,1-�ѿ�ͨ;' AFTER `is_auth`;

#����΢���豸��
DROP TABLE IF EXISTS `mcp_weixin_device`;
CREATE TABLE `mcp_weixin_device` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `device_type` VARCHAR(36) NOT NULL COMMENT '�豸����',
  `device_id` VARCHAR(36) NOT NULL COMMENT '΢���豸ID',
  `device_licence` VARCHAR(256) NOT NULL COMMENT '��Ʒʹ��ֱ��SDKʱ���ص��豸֤��',
  `qrticket` VARCHAR(64) NOT NULL COMMENT '��ά��',
  `open_id` VARCHAR(64) NOT NULL COMMENT '΢��OpenID',
  `created_on` DATETIME NOT NULL COMMENT '����ʱ��',
  `modified_on` DATETIME NOT NULL COMMENT '����ʱ��',
  `remark` VARCHAR(128) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='΢���豸��';

#����΢�Ź��ں�JSAPIƱ�ݱ�
DROP TABLE IF EXISTS `mcp_weixin_jsapiticket`;
CREATE TABLE `mcp_weixin_jsapiticket` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `app_id` VARCHAR(32) DEFAULT NULL,
  `jsapi_ticket` VARCHAR(128) DEFAULT NULL,
  `expires_time` DATETIME NOT NULL,
  `update_time` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='΢�Ź��ں�JSAPIƱ�ݱ�';

#����΢�Ź��ں����Ʊ�
DROP TABLE IF EXISTS `mcp_weixin_token`;
CREATE TABLE `mcp_weixin_token` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `app_id` VARCHAR(32) DEFAULT NULL,
  `access_token` VARCHAR(128) DEFAULT NULL,
  `expires_time` DATETIME NOT NULL,
  `update_time` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='΢�Ź��ں����Ʊ�';

#����΢���û���
DROP TABLE IF EXISTS `mcp_weixin_user`;
CREATE TABLE `mcp_weixin_user` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `wx_type` INT(11) NOT NULL COMMENT '΢�����ͣ�0-�ͻ���,1-�̼Ҷ�',
  `open_id` VARCHAR(64) NOT NULL COMMENT '΢��OpenID',
  `user_id` BIGINT(20) NOT NULL COMMENT '�û�ID',
  `terminal_code` VARCHAR(64) NOT NULL COMMENT '�ն��豸�����룬�磺mac��ַ',
  `status_code` INT(11) NOT NULL DEFAULT '1' COMMENT '״̬:1-�ѹ�ע,2-ȡ����ע',
  `created_on` DATETIME NOT NULL COMMENT '����ʱ��',
  `modified_on` DATETIME NOT NULL COMMENT '����ʱ��',
  `remark` VARCHAR(128) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`),
  UNIQUE KEY `open_id` (`open_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='΢���û���';