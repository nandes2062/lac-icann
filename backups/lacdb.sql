## Redaxo Database Dump Version 5
## Prefix rex_
## charset utf-8

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `rex_action`;
CREATE TABLE `rex_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `preview` text,
  `presave` text,
  `postsave` text,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_article`;
CREATE TABLE `rex_article` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catpriority` int(10) unsigned NOT NULL,
  `startarticle` tinyint(1) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  `yrewrite_url` varchar(255) NOT NULL,
  `yrewrite_canonical_url` varchar(255) NOT NULL,
  `yrewrite_priority` varchar(5) NOT NULL,
  `yrewrite_changefreq` varchar(10) NOT NULL,
  `yrewrite_title` varchar(255) NOT NULL,
  `yrewrite_description` text NOT NULL,
  `yrewrite_index` tinyint(1) NOT NULL,
  `art_titulo` text,
  `cat_pic` varchar(255) DEFAULT '',
  `art_picture` varchar(255) DEFAULT '',
  `art_gallery` text,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `find_articles` (`id`,`clang_id`),
  KEY `id` (`id`),
  KEY `clang_id` (`clang_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article` WRITE;
/*!40000 ALTER TABLE `rex_article` DISABLE KEYS */;
INSERT INTO `rex_article` VALUES 
  (1,1,0,'Inicio','Inicio',1,1,1,'|',1,'2019-01-30 14:18:39','2019-01-31 17:10:50',1,1,'admin','admin',0,'','','','','','',0,'','','banner.jpg',''),
  (2,1,0,'Home','Home',1,1,1,'|',1,'2019-01-31 00:16:31','2019-02-05 16:29:31',1,2,'admin','admin',0,'','','','','','',0,'','','','banner.jpg,banner.jpg,banner.jpg'),
  (3,2,0,'Antecedentes','Antecedentes',2,1,1,'|',1,'2019-01-30 16:06:07','2019-02-05 14:00:52',1,1,'admin','admin',0,'','','','','','',0,'','','',''),
  (4,2,0,'Background','Background',2,1,1,'|',1,'2019-01-31 00:16:32','2019-01-31 00:22:36',1,2,'admin','admin',0,'','','','','','',0,'','','',''),
  (5,3,0,'Consejo y comité de implementación','Consejo y comité de implementación',3,1,1,'|',1,'2019-01-30 16:07:11','2019-01-31 12:56:54',1,1,'admin','admin',0,'','','','','','',0,'','','','banner.jpg,banner.jpg,banner.jpg,banner.jpg'),
  (6,3,0,'Council and implementation committee','Council and implementation committee',3,1,1,'|',1,'2019-01-31 00:16:34','2019-01-31 00:22:26',1,2,'admin','admin',0,'','','','','','',0,'','','',''),
  (7,4,0,'Áreas de interés y objetivos','Áreas de interés y objetivos',4,1,1,'|',1,'2019-01-30 16:09:12','2019-02-05 18:06:22',1,1,'admin','admin',0,'','','','','','',0,'','','',''),
  (8,4,0,'Areas of interest and objectives','Areas of interest and objectives',4,1,1,'|',1,'2019-01-31 00:16:35','2019-02-05 18:06:13',1,2,'admin','admin',0,'','','','','','',0,'','','',''),
  (9,5,0,'Proyectos','Proyectos',5,1,1,'|',1,'2019-01-30 16:15:23','2019-01-31 16:57:15',1,1,'admin','admin',0,'','','','','','',0,'','','banner.jpg',''),
  (10,5,0,'Projects','Projects',5,1,1,'|',1,'2019-01-31 00:16:35','2019-01-31 00:21:54',1,2,'admin','admin',0,'','','','','','',0,'','','',''),
  (11,6,0,'404','',0,0,1,'|',1,'2019-01-30 16:36:48','2019-01-30 17:37:21',1,1,'admin','admin',0,'','','','','','',0,'','','',''),
  (12,6,0,'404','',0,0,1,'|',1,'2019-01-30 16:36:48','2019-01-31 00:16:36',1,2,'admin','admin',0,'','','','','','',0,'','','','');
/*!40000 ALTER TABLE `rex_article` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_article_slice`;
CREATE TABLE `rex_article_slice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clang_id` int(10) unsigned NOT NULL,
  `ctype_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `value1` text,
  `value2` text,
  `value3` text,
  `value4` text,
  `value5` text,
  `value6` text,
  `value7` text,
  `value8` text,
  `value9` text,
  `value10` text,
  `value11` text,
  `value12` text,
  `value13` text,
  `value14` text,
  `value15` text,
  `value16` text,
  `value17` text,
  `value18` text,
  `value19` text,
  `value20` text,
  `media1` varchar(255) DEFAULT NULL,
  `media2` varchar(255) DEFAULT NULL,
  `media3` varchar(255) DEFAULT NULL,
  `media4` varchar(255) DEFAULT NULL,
  `media5` varchar(255) DEFAULT NULL,
  `media6` varchar(255) DEFAULT NULL,
  `media7` varchar(255) DEFAULT NULL,
  `media8` varchar(255) DEFAULT NULL,
  `media9` varchar(255) DEFAULT NULL,
  `media10` varchar(255) DEFAULT NULL,
  `medialist1` text,
  `medialist2` text,
  `medialist3` text,
  `medialist4` text,
  `medialist5` text,
  `medialist6` text,
  `medialist7` text,
  `medialist8` text,
  `medialist9` text,
  `medialist10` text,
  `link1` varchar(10) DEFAULT NULL,
  `link2` varchar(10) DEFAULT NULL,
  `link3` varchar(10) DEFAULT NULL,
  `link4` varchar(10) DEFAULT NULL,
  `link5` varchar(10) DEFAULT NULL,
  `link6` varchar(10) DEFAULT NULL,
  `link7` varchar(10) DEFAULT NULL,
  `link8` varchar(10) DEFAULT NULL,
  `link9` varchar(10) DEFAULT NULL,
  `link10` varchar(10) DEFAULT NULL,
  `linklist1` text,
  `linklist2` text,
  `linklist3` text,
  `linklist4` text,
  `linklist5` text,
  `linklist6` text,
  `linklist7` text,
  `linklist8` text,
  `linklist9` text,
  `linklist10` text,
  `article_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slice_priority` (`article_id`,`priority`,`module_id`),
  KEY `clang_id` (`clang_id`),
  KEY `article_id` (`article_id`),
  KEY `find_slices` (`clang_id`,`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_clang`;
CREATE TABLE `rex_clang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  `clang_setlocale` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_clang` WRITE;
/*!40000 ALTER TABLE `rex_clang` DISABLE KEYS */;
INSERT INTO `rex_clang` VALUES 
  (1,'es','español',1,1,0,''),
  (2,'en','english',2,1,0,'');
/*!40000 ALTER TABLE `rex_clang` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_config`;
CREATE TABLE `rex_config` (
  `namespace` varchar(75) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`namespace`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rex_config` WRITE;
/*!40000 ALTER TABLE `rex_config` DISABLE KEYS */;
INSERT INTO `rex_config` VALUES 
  ('be_style/customizer','codemirror','1'),
  ('be_style/customizer','codemirror-langs','0'),
  ('be_style/customizer','codemirror-tools','0'),
  ('be_style/customizer','codemirror_theme','\"eclipse\"'),
  ('be_style/customizer','labelcolor','\"#43a047\"'),
  ('be_style/customizer','showlink','1'),
  ('core','package-config','{\"backup\":{\"install\":true,\"status\":true},\"be_style\":{\"install\":true,\"status\":true,\"plugins\":{\"customizer\":{\"install\":true,\"status\":true},\"redaxo\":{\"install\":true,\"status\":true}}},\"cronjob\":{\"install\":false,\"status\":false,\"plugins\":{\"article_status\":{\"install\":false,\"status\":false},\"optimize_tables\":{\"install\":false,\"status\":false}}},\"developer\":{\"install\":true,\"status\":true},\"install\":{\"install\":true,\"status\":true},\"media_manager\":{\"install\":true,\"status\":true},\"mediapool\":{\"install\":true,\"status\":true},\"metainfo\":{\"install\":true,\"status\":true},\"phpmailer\":{\"install\":true,\"status\":true},\"project\":{\"install\":true,\"status\":true},\"redactor2\":{\"install\":true,\"status\":true},\"structure\":{\"install\":true,\"status\":true,\"plugins\":{\"content\":{\"install\":true,\"status\":true},\"history\":{\"install\":false,\"status\":false},\"version\":{\"install\":false,\"status\":false}}},\"users\":{\"install\":true,\"status\":true},\"yform\":{\"install\":true,\"status\":true,\"plugins\":{\"docs\":{\"install\":true,\"status\":true},\"email\":{\"install\":true,\"status\":true},\"manager\":{\"install\":true,\"status\":true},\"rest\":{\"install\":false,\"status\":false},\"tools\":{\"install\":false,\"status\":false}}},\"yrewrite\":{\"install\":true,\"status\":true}}'),
  ('core','package-order','[\"be_style\",\"be_style\\/customizer\",\"be_style\\/redaxo\",\"users\",\"backup\",\"developer\",\"install\",\"media_manager\",\"mediapool\",\"phpmailer\",\"redactor2\",\"structure\",\"metainfo\",\"structure\\/content\",\"yform\",\"yform\\/docs\",\"yform\\/email\",\"yform\\/manager\",\"yrewrite\",\"project\"]'),
  ('core','version','\"5.6.5\"'),
  ('developer','actions','true'),
  ('developer','delete','true'),
  ('developer','dir_suffix','true'),
  ('developer','items','{\"templates\":{\"1\":1548868601,\"2\":1548910565,\"3\":1549390544,\"4\":1549402622,\"5\":1548953850,\"6\":1549401633},\"modules\":[]}'),
  ('developer','modules','true'),
  ('developer','prefix','false'),
  ('developer','rename','true'),
  ('developer','sync_backend','true'),
  ('developer','sync_frontend','true'),
  ('developer','templates','true'),
  ('developer','umlauts','false'),
  ('media_manager','interlace','[\"jpg\"]'),
  ('media_manager','jpg_quality','85'),
  ('media_manager','png_compression','5'),
  ('media_manager','webp_quality','85'),
  ('phpmailer','bcc','\"\"'),
  ('phpmailer','charset','\"utf-8\"'),
  ('phpmailer','confirmto','\"\"'),
  ('phpmailer','encoding','\"8bit\"'),
  ('phpmailer','from','\"\"'),
  ('phpmailer','fromname','\"Mailer\"'),
  ('phpmailer','host','\"localhost\"'),
  ('phpmailer','log','0'),
  ('phpmailer','mailer','\"mail\"'),
  ('phpmailer','password','\"\"'),
  ('phpmailer','port','25'),
  ('phpmailer','priority','0'),
  ('phpmailer','smtpauth','false'),
  ('phpmailer','smtpsecure','\"\"'),
  ('phpmailer','smtp_debug','\"0\"'),
  ('phpmailer','test_address','\"\"'),
  ('phpmailer','username','\"\"'),
  ('phpmailer','wordwrap','120'),
  ('structure','notfound_article_id','6'),
  ('structure','start_article_id','1'),
  ('structure/content','default_template_id','1');
/*!40000 ALTER TABLE `rex_config` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media`;
CREATE TABLE `rex_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `attributes` text,
  `filetype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  `med_descriptionWYSIWYG` text,
  `med_gallery_title` text,
  `med_gallery` text,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media` WRITE;
/*!40000 ALTER TABLE `rex_media` DISABLE KEYS */;
INSERT INTO `rex_media` VALUES 
  (1,1,'','image/jpeg','banner.jpg','banner.jpg','122222',1842,750,'Acrónimos y términos de la ICANN','2019-01-31 12:56:32','2019-02-05 13:59:09','admin','admin',0,'<p>La&nbsp;<abbr>ICANN</abbr>&nbsp;es una corporación de beneficio público, sin fines de lucro, con <a href=\"https://www.icann.org/public-comments\" target=\"_blank\">participantes</a> de todo el mundo dedicados a mantener una Internet segura, estable e interoperable.&nbsp;</p><p>jejejej mas pruebas muy interesntes</p>','Titulo ahora listo','');
/*!40000 ALTER TABLE `rex_media` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_category`;
CREATE TABLE `rex_media_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `attributes` text,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_category` WRITE;
/*!40000 ALTER TABLE `rex_media_category` DISABLE KEYS */;
INSERT INTO `rex_media_category` VALUES 
  (1,'Fotos de Cabecera',0,'|','2019-01-31 12:44:25','2019-01-31 12:44:25','admin','admin','',0);
/*!40000 ALTER TABLE `rex_media_category` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type`;
CREATE TABLE `rex_media_manager_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_manager_type` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type` VALUES 
  (1,1,'rex_mediapool_detail','Zur Darstellung von Bildern in der Detailansicht im Medienpool'),
  (2,1,'rex_mediapool_maximized','Zur Darstellung von Bildern im Medienpool wenn maximiert'),
  (3,1,'rex_mediapool_preview','Zur Darstellung der Vorschaubilder im Medienpool'),
  (4,1,'rex_mediabutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s'),
  (5,1,'rex_medialistbutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s');
/*!40000 ALTER TABLE `rex_media_manager_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type_effect`;
CREATE TABLE `rex_media_manager_type_effect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `effect` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_manager_type_effect` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type_effect` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type_effect` VALUES 
  (1,1,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"200\",\"rex_effect_resize_height\":\"200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00',''),
  (2,2,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"600\",\"rex_effect_resize_height\":\"600\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00',''),
  (3,3,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"80\",\"rex_effect_resize_height\":\"80\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00',''),
  (4,4,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00',''),
  (5,5,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'0000-00-00 00:00:00','','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `rex_media_manager_type_effect` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_field`;
CREATE TABLE `rex_metainfo_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(10) unsigned NOT NULL,
  `attributes` text NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) NOT NULL,
  `params` text,
  `validate` text,
  `callback` text,
  `restrictions` text,
  `createuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_metainfo_field` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_field` DISABLE KEYS */;
INSERT INTO `rex_metainfo_field` VALUES 
  (1,'Individual Title-Tag','art_titulo',1,'',1,'','','','','','admin','2019-01-30 22:46:16','admin','2019-01-30 22:46:16'),
  (2,'setlocale','clang_setlocale',1,'',1,'','','','','','admin','2019-01-30 22:49:56','admin','2019-01-30 22:49:56'),
  (3,'Teaserbild','cat_pic',1,'',6,'','preview=1','','','','admin','2019-01-30 22:53:55','admin','2019-01-30 22:53:55'),
  (5,'Foto de cabecera','art_picture',3,'',6,'','preview=1','','','','admin','2019-01-31 12:25:15','admin','2019-01-31 12:32:05'),
  (6,'Galeria de Slider','art_gallery',4,'',7,'','category=\"1\"  preview=\"1\"','','','','admin','2019-01-31 12:45:41','admin','2019-01-31 12:45:41'),
  (7,'Descripción WYSIWYG [ES]','med_descriptionWYSIWYG',5,'class=\"form-control redactorEditor2-basic\"',2,'','','','','','admin','2019-01-31 13:32:11','admin','2019-01-31 16:50:46'),
  (8,'Titulo de Galeria [ES]','med_gallery_title',4,'',1,'','','','','','admin','2019-01-31 16:45:54','admin','2019-01-31 16:47:49'),
  (9,'Galería','med_gallery',1,'',12,'','','','','','admin','2019-01-31 16:48:35','admin','2019-01-31 16:48:43');
/*!40000 ALTER TABLE `rex_metainfo_field` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_type`;
CREATE TABLE `rex_metainfo_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `dbtype` varchar(255) NOT NULL,
  `dblength` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_metainfo_type` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_type` DISABLE KEYS */;
INSERT INTO `rex_metainfo_type` VALUES 
  (1,'text','text',0),
  (2,'textarea','text',0),
  (3,'select','varchar',255),
  (4,'radio','varchar',255),
  (5,'checkbox','varchar',255),
  (6,'REX_MEDIA_WIDGET','varchar',255),
  (7,'REX_MEDIALIST_WIDGET','text',0),
  (8,'REX_LINK_WIDGET','varchar',255),
  (9,'REX_LINKLIST_WIDGET','text',0),
  (10,'date','text',0),
  (11,'datetime','text',0),
  (12,'legend','text',0),
  (13,'time','text',0);
/*!40000 ALTER TABLE `rex_metainfo_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module`;
CREATE TABLE `rex_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `output` mediumtext NOT NULL,
  `input` mediumtext NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `attributes` text,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_module_action`;
CREATE TABLE `rex_module_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `action_id` int(10) unsigned NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_redactor2_profiles`;
CREATE TABLE `rex_redactor2_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `urltype` varchar(191) NOT NULL,
  `externalurltarget` text NOT NULL,
  `minheight` int(5) NOT NULL,
  `maxheight` int(5) NOT NULL,
  `characterlimit` int(5) NOT NULL,
  `toolbarfixed` tinyint(1) NOT NULL,
  `shortcuts` tinyint(1) NOT NULL,
  `linkify` tinyint(1) NOT NULL,
  `imagetag` text NOT NULL,
  `redactor_plugins` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_redactor2_profiles` WRITE;
/*!40000 ALTER TABLE `rex_redactor2_profiles` DISABLE KEYS */;
INSERT INTO `rex_redactor2_profiles` VALUES 
  (1,'full','Standard Redactor-Konfiguration','relative','blank',300,800,0,0,0,1,'','anchorlink,alignment,blockquote,bold,cleaner,clips[Snippetname1=Snippettext1|Snippetname2=Snippettext2],deleted,emaillink,externallink,fontcolor[Weiss=#ffffff|Schwarz=#000000],fontfamily[Arial|Times],fontsize[12px|15pt|120%],format[Absatz Klein=p.small|Absatz Mittel=p.middle|Absatz Gross=p.big],fullscreen,groupheading[1|2|3|4|5|6],grouplink[email|external|internal|media|telephone],grouplist[unorderedlist|orderedlist|indent|outdent],heading1,heading2,heading3,heading4,heading5,heading6,horizontalrule,internallink,italic,media,medialink,orderedlist,paragraph,properties,redo,source,styles[code=Code|kbd=Shortcut|mark=Markiert|samp=Sample|var=Variable],sub,sup,table,telephonelink,textdirection,underline,undo,unorderedlist'),
  (4,'basic','Editor de texto basico, esencial','relative','blank',300,800,0,1,0,1,'','alignment,bold,cleaner,deleted,fullscreen,grouplink[email|external],grouplist[unorderedlist|orderedlist|indent|outdent],horizontalrule,italic,paragraph,properties,redo,source,underline,undo');
/*!40000 ALTER TABLE `rex_redactor2_profiles` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_sprog_wildcard`;
CREATE TABLE `rex_sprog_wildcard` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `wildcard` varchar(255) DEFAULT NULL,
  `replace` text,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_template`;
CREATE TABLE `rex_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `active` tinyint(1) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_template` WRITE;
/*!40000 ALTER TABLE `rex_template` DISABLE KEYS */;
INSERT INTO `rex_template` VALUES 
  (1,'Estándar','<?php\r\nif (!defined(\'SITE_TYPE\')) {\r\n    define(\'SITE_TYPE\', \'col1\');\r\n}\r\n?>\r\nREX_TEMPLATE[5]\r\n',1,'admin','admin','2019-01-30 13:16:41','2019-01-30 13:16:41','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (2,'00.Head','<?php\r\n$versionSite = \'1.0.0\';\r\n// error_reporting(0);\r\nerror_reporting(E_ALL);\r\n// Error report should only be active during development. Deavtivate (0) on a live website\r\n\r\n$page_is_visible = true;\r\n\r\n// Is current article offline?\r\nif (rex_article::getCurrent()->isOnline() == 0) {\r\n	$page_is_visible = false;\r\n}\r\n\r\n// is online_from_date newer than actual date?\r\nif (rex_article::getCurrent()->getValue(\'art_online_from\') != \'\' && rex_article::getCurrent()->getValue(\'art_online_from\') > time()) {\r\n	$page_is_visible = false;\r\n}\r\n\r\n// is online_from_date older than actual date\r\nif (rex_article::getCurrent()->getValue(\'art_online_to\') != \'\' && rex_article::getCurrent()->getValue(\'art_online_to\') < time()) {\r\n	$page_is_visible = false;\r\n}\r\n\r\n\r\n// Is User not logged in?\r\nif (!rex_backend_login::hasSession()) {\r\n	if ($page_is_visible == false) {\r\n		// redirect to 404 page\r\n		header (\'HTTP/1.1 301 Moved Permanently\');\r\n		header(\'Location: \'.rex_getUrl(rex_article::getNotFoundArticleId(), rex_clang::getCurrentId()));\r\n		exit();\r\n	}\r\n}\r\n\r\n// Necessary for input and output of module \"Tabs und Akkordions\"\r\nrex::setProperty(\'tabs\', new ArrayIterator());\r\n\r\n// set charset to utf8\r\nheader(\'Content-Type: text/html; charset=utf-8\');\r\n\r\n// setLocale is a language meta field, set your individual locale informations per language\r\nsetlocale (LC_ALL, rex_clang::getCurrent()->getValue(\'clang_setlocale\'));\r\n\r\n?><!DOCTYPE html>\r\n<html lang=\"<?php echo rex_clang::getCurrent()->getCode(); ?>\" prefix=\"og: http://ogp.me/ns#\">\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n	<meta name=\"viewport\" content=\"initial-scale=1.0, width=device-width\">\r\n    <meta name=\"designer\" content=\"Fernando Javier Averanga Aruquipa / https://nandes2062.github.io\">   \r\n    <meta name=\"author\" content=\"\">\r\n	<?php\r\n	// Use article title as title-Tag, unless a custom title-tag is set\r\n    if ($this->hasValue(\"art_title\") && $this->getValue(\"art_title\") != \"\") {\r\n		$title = htmlspecialchars($this->getValue(\'art_title\'));\r\n	} else {\r\n		$title = htmlspecialchars($this->getValue(\'name\'));\r\n	}\r\n\r\n	echo \'\r\n	<title>\'.$title.\' | \' . rex::getServerName() . \'</title>\';\r\n    echo \'<meta property=\"og:title\" content=\"\'.$title.\' | \' . rex::getServerName() . \'\">\';\r\n\r\n	// Keywords and description\r\n	// If current article does not have keywords and description, take them from start article\r\n	$keywords = \"\";\r\n    if ($this->hasValue(\"art_keywords\") && $this->getValue(\"art_keywords\") != \"\") {\r\n        $keywords = $this->getValue(\"art_keywords\");\r\n    } else {\r\n        $home = new rex_article_content(rex_article::getSiteStartArticleId());\r\n        if ($home->hasValue(\"art_keywords\")) {\r\n            $keywords = $home->getValue(\'art_keywords\');\r\n        }\r\n    }\r\n\r\n    $description = \"Latin America and the Caribbean - Strategic Plan\";\r\n    if ($this->hasValue(\"art_description\") && $this->getValue(\"art_description\") != \"\") {\r\n        $description = $this->getValue(\"art_description\");\r\n    } else {\r\n        $home = new rex_article_content(rex_article::getSiteStartArticleId());\r\n        if ($home->hasValue(\"art_description\")) {\r\n            $description = $home->getValue(\'art_description\');\r\n        }\r\n    }\r\n\r\n	echo \'\r\n	<meta name=\"keywords\" content=\"\'.htmlspecialchars($keywords).\'\">\';\r\n\r\n	echo \'\r\n	<meta name=\"description\" content=\"\'.htmlspecialchars($description).\'\">\';\r\n	?>\r\n    \r\n	<link rel=\"stylesheet\" href=\"<?= rex_url::base(\'assets/css/styles.css?v=\' . $versionSite) ?>\">\r\n</head>',0,'admin','admin','2019-01-30 13:46:58','2019-01-31 00:56:05','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (3,'02. Footer','<a class=\"button--goup fade-out\" id=\"goup\"><img src=\"<?= rex_url::base(\'assets/svg/up.svg\') ?>\" alt=\"\"/></a>\r\n<div class=\"pre-footer\">\r\n  <div class=\"lac-container\">\r\n    <div class=\"lac-item main-footer__item\">\r\n      <ul class=\"social\">\r\n        <li class=\"social--item center\"><a class=\"social--link\" href=\"http://\"><svg aria-hidden=\"true\" data-prefix=\"fab\" data-icon=\"facebook-f\" class=\"svg-inline--fa fa-facebook-f fa-w-9\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 264 512\"><path fill=\"currentColor\" d=\"M76.7 512V283H0v-91h76.7v-71.7C76.7 42.4 124.3 0 193.8 0c33.3 0 61.9 2.5 70.2 3.6V85h-48.2c-37.8 0-45.1 18-45.1 44.3V192H256l-11.7 91h-73.6v229\"></path></svg><span>Facebook</span></a></li>\r\n        <li class=\"social--item center\"><a class=\"social--link\" href=\"http://\"><svg aria-hidden=\"true\" data-prefix=\"fab\" data-icon=\"youtube\" class=\"svg-inline--fa fa-youtube fa-w-18\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 576 512\"><path fill=\"currentColor\" d=\"M549.655 124.083c-6.281-23.65-24.787-42.276-48.284-48.597C458.781 64 288 64 288 64S117.22 64 74.629 75.486c-23.497 6.322-42.003 24.947-48.284 48.597-11.412 42.867-11.412 132.305-11.412 132.305s0 89.438 11.412 132.305c6.281 23.65 24.787 41.5 48.284 47.821C117.22 448 288 448 288 448s170.78 0 213.371-11.486c23.497-6.321 42.003-24.171 48.284-47.821 11.412-42.867 11.412-132.305 11.412-132.305s0-89.438-11.412-132.305zm-317.51 213.508V175.185l142.739 81.205-142.739 81.201z\"></path></svg><span>Youtube</span></a></li>\r\n        <li class=\"social--item center\"><a class=\"social--link\" href=\"http://\"><svg aria-hidden=\"true\" data-prefix=\"fab\" data-icon=\"linkedin-in\" class=\"svg-inline--fa fa-linkedin-in fa-w-14\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 448 512\"><path fill=\"currentColor\" d=\"M100.3 448H7.4V148.9h92.9V448zM53.8 108.1C24.1 108.1 0 83.5 0 53.8S24.1 0 53.8 0s53.8 24.1 53.8 53.8-24.1 54.3-53.8 54.3zM448 448h-92.7V302.4c0-34.7-.7-79.2-48.3-79.2-48.3 0-55.7 37.7-55.7 76.7V448h-92.8V148.9h89.1v40.8h1.3c12.4-23.5 42.7-48.3 87.9-48.3 94 0 111.3 61.9 111.3 142.3V448h-.1z\"></path></svg><span>Linkedin</span></a></li>\r\n        <li class=\"social--item center\"><a class=\"social--link\" href=\"http://\"><svg aria-hidden=\"true\" data-prefix=\"fab\" data-icon=\"twitter\" class=\"svg-inline--fa fa-twitter fa-w-16\" role=\"img\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 512 512\"><path fill=\"currentColor\" d=\"M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z\"></path></svg><span>Twitter</span></a></li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</div>\r\n<footer class=\"main-footer\">\r\n  <div class=\"lac-container\">\r\n    <div class=\"lac-item l-60 m-100 s-100 main-footer__item\">\r\n      <div class=\"main-footer__content\">\r\n        <ul class=\"data-list lac-container\">\r\n          <li class=\"lac-item m-50\"><a><span class=\"w4\">Inicio</span></a></li>\r\n          <li class=\"lac-item m-50\" v-for=\"item in mainmenu\"><a v-if=\"item.submenu == null\" :href=\"item.href\"><span class=\"w4\" v-text=\"item.title\"></span></a><a v-else=\"v-else\" :href=\"item.href\" v-text=\"item.title + \': \'\"></a>\r\n            <template v-for=\"subitem in item.submenu\"><a :href=\"subitem.href\" v-text=\"\' - \' + subitem.title\"></a></template>\r\n          </li>\r\n        </ul>\r\n      </div>\r\n    </div>\r\n    <div class=\"lac-item l-40 m-100 s-100 main-footer__item cross-center main-center\">\r\n      <form class=\"main-footer__content lac-item l-50 m-50 s-90\">\r\n        <div class=\"form__item\">\r\n          <label>Seleccionar idioma</label>\r\n          <select name=\"idioma\" onchange=\"location = this.value;\">\r\n            <?php //echo rex_clang::getCurrent()->getName(); ?>  \r\n            <!-- <option value=\"<?php echo rex_getUrl($this->getValue(\'article_id\'), 2); ?>\"><?php echo rex_clang::getCurrent()->getName(); ?></option> -->\r\n            <!-- <option value=\"<?php echo rex_getUrl($this->getValue(\'article_id\'), 1); ?>\">Español (spanish)</option> -->\r\n            <?php\r\n            if (count(rex_clang::getAll(true)) > 1) {\r\n              foreach (rex_clang::getAll(true) as $lang) {\r\n                if (rex_clang::getCurrentId() == $lang->getValue(\'id\')) {\r\n                  echo \'<option value=\"#\">\'.$lang->getValue(\'name\').\'</option>\';\r\n                } else {\r\n                  echo \'<option value=\"\'.rex_getUrl($this->getValue(\'article_id\'), $lang->getValue(\'id\')).\'\">\'.$lang->getValue(\'name\').\'</option>\';\r\n                }\r\n              }\r\n            }\r\n            ?>\r\n          </select>\r\n        </div>\r\n      </form>\r\n    </div>\r\n  </div>\r\n</footer>\r\n<footer class=\"main-copyrigth\">\r\n  <div class=\"lac-container\">\r\n    <div class=\"lac-item l-100 main-footer__item\">\r\n      <div class=\"main-footer__content main-distribute cross-center\">\r\n        <p>Todos los Derechos Reservados ® <b><?php echo rex::getServerName(); ?> </b>© <span id=\"currentDate\"></span></p>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</footer>',0,'admin','admin','2019-02-05 14:15:44','2019-02-05 14:15:44','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (4,'01.HeaderMain','<header class=\"main-header\">\r\n  <div class=\"lac-container full main-header--bartop\">\r\n    <div class=\"lac-item lac-container to-center cross-center\">\r\n      <div class=\"lac-item main-end\"><a href=\"<?php echo rex_getUrl($this->getValue(\'article_id\'), 2); ?>\">English</a><a href=\"<?php echo rex_getUrl($this->getValue(\'article_id\'), 1); ?>\">Español</a>\r\n      </div>\r\n    </div>\r\n  </div>\r\n  <div class=\"lac-container main-header--menu\">\r\n    <div class=\"lac-item s-80 l-25 cross-center lac-item--logo\"><a class=\"main-logo cross-center\" href=\"<?= rex_url::base() ?>\"><img src=\"<?= rex_url::base(\'assets/images/icann_logo.png\') ?>\"/>\r\n        <div class=\"lac\"><b class=\"lac-font\">Latin America and<br>the Caribbean</b>\r\n          <div class=\"lac-font\">Strategic Plan</div>\r\n        </div></a></div>\r\n    <div class=\"lac-item s-20 l-75 cross-center main-end header-links\">\r\n      <!-- <nav class=\"main-menu\" id=\"main-menu\">\r\n        <ul>\r\n          <li v-for=\"(item, index) in mainmenu\"><a :class=\"(index === 4) ? \'resalt\' : \'\'\" :href=\"\'#\' + item.href\" v-text=\"item.title\"></a></li>\r\n        </ul>\r\n      </nav> -->\r\n      <?php\r\n				$path = explode(\"|\",$this->getValue(\"path\").$this->getValue(\"article_id\").\"|\");\r\n				$path1 = ((!empty($path[1])) ? $path[1] : \'\');\r\n				$path2 = ((!empty($path[2])) ? $path[2] : \'\');\r\n				$nav_main = \'\';\r\n				foreach (rex_category::getRootCategories() as $lev1) {\r\n					$hidden_ids = array(0,20);\r\n					// hide Home- and footer-article in navigation\r\n					$category_is_visible = true;\r\n					// only visible if online_from and online_to is ok\r\n					if ($lev1->getValue(\'art_online_from\') != \'\' && $lev1->getValue(\'art_online_from\') > time()) { $category_is_visible = false; }\r\n					if ($lev1->getValue(\'art_online_to\') != \'\' && $lev1->getValue(\'art_online_to\') < time()) { $category_is_visible = false; }\r\n					if ($lev1->isOnline(true) && (!in_array($lev1->getId(), $hidden_ids)) && $category_is_visible == true) {\r\n						if ($lev1->getId() == $path1) {\r\n							$nav_main .= \'\r\n							<li class=\"active\"><a href=\"\'.$lev1->getUrl().\'\" >\'.htmlspecialchars($lev1->getValue(\'name\')).\'</a>\';\r\n						} else {\r\n								$nav_main .= \'\r\n							<li><a class=\"\" href=\"\'.$lev1->getUrl().\'\" >\'.htmlspecialchars($lev1->getValue(\'name\')).\'</a>\';\r\n						}\r\n						// 1st level start\r\n						$lev1Size = sizeof($lev1->getChildren());\r\n							if ($lev1Size != \"0\") {\r\n								$nav_main .= \'\r\n								<ul class=\"dropdown-menu\">\';\r\n								$nav_main .= \'\r\n								</ul>\';\r\n							}\r\n						$nav_main .= \'\r\n						</li>\';\r\n					}\r\n				}\r\n				echo \'\r\n				<nav class=\"main-menu\" id=\"main-menu\">\r\n					<ul>\r\n						\'.$nav_main.\'\r\n						\'.rex::getProperty(\'lang_switch\').\'\r\n					</ul>\r\n				</nav>\';\r\n			?>\r\n      <div class=\"main-menu-toggle to-l\" id=\"main-menu-toggle\"></div>\r\n    </div>\r\n  </div>\r\n</header>',0,'admin','admin','2019-01-31 11:27:44','2019-02-05 17:37:02','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (5,'03. TEMPLATE','REX_TEMPLATE[2]\r\n<body>\r\n  <div id=\"rex\">\r\n    REX_TEMPLATE[4]\r\n<!-- *******************************************************\r\nHeaderpic\r\n******************************************************* -->\r\nREX_TEMPLATE[6]\r\n\r\n<?php\r\n    \r\n/*\r\nIf \"01 . Standard\", content-container has full width\r\n*/\r\nif (SITE_TYPE == \'col1\') { ?>\r\n	<?php echo $this->getArticle(\'1\'); ?>\r\n<?php }\r\n\r\n/*\r\nIf \"02 . Zweispalter\", there is a main column and a side column with 2/3 - 1/3 width\r\n\r\nif (SITE_TYPE == \'col2\') { ?>\r\n	<div class=\"container mtb\">\r\n		<div class=\"row\">\r\n\r\n			<div class=\"col-lg-8 col-sm-12\">\r\n				<?php echo $this->getArticle(\'1\'); ?>\r\n			</div>\r\n\r\n			<div class=\"col-lg-3 col-lg-offset-1 sidebar hidden-xs hidden-sm\">\r\n				<!-- Subnavigation -->\r\n				REX_TEMPLATE[8]\r\n				<!-- /Subnavigation -->\r\n\r\n				<!-- more Content -->\r\n				<?php echo $this->getArticle(\'2\'); ?>\r\n			</div>\r\n\r\n		</div>\r\n	</div>\r\n*/\r\n//<?php } ?>\r\n         \r\n<!-- *******************************************************\r\n FOOTER\r\n ******************************************************* -->\r\n    REX_TEMPLATE[3]\r\n    </div>  \r\n    <script src=\"<?= rex_url::base(\'assets/js/modernizr.js\') ?>\"></script>\r\n    <script src=\"<?= rex_url::base(\'assets/js/script.js?v=\' . $versionSite) ?>\"></script>\r\n\r\n</body>\r\n</html>',0,'admin','admin','2019-01-31 12:57:30','2019-01-31 12:57:30','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (6,'04. HeaderImage','<?php\r\n// Incluir Headerpicture recursive\r\n// Si el artículo actual no tiene imagen, toma una foto de las categorías principales\r\n$languageSuffix = \'\';\r\nif (rex_clang::getCurrentId() == 2) {\r\n    $languageSuffix = \'_en\';\r\n}\r\n$header = \'<div class=\"lac-slider\"><span></span></div>\';\r\n$headerpic = $this->getValue(\'art_picture\');\r\n$mediapic = rex_media::get($headerpic);\r\n$darken = $this->getValue(\'art_darken\');\r\nif ($headerpic == \'\') {\r\n    $category = rex_article::getCurrent()->getCategory();\r\n    while ($headerpic == \'\') {\r\n        if ($category == null) {\r\n            break;\r\n        }\r\n        $headerpic = $category->getValue(\'art_picture\');\r\n        $darken = $category->getValue(\'art_darken\');\r\n        $category = $category->getParent();\r\n    }\r\n}\r\nif ($headerpic == \'\') {\r\n    $headerpic = rex_article::getSiteStartArticle()->getValue(\'art_picture\');\r\n    $darken = rex_article::getSiteStartArticle()->getValue(\'art_file_darken\');\r\n    $mediapictitle = $this->getValue(\'name\');\r\n} else {\r\n    $mediapictitle = $mediapic->getValue(\'med_gallery_title\' . $languageSuffix);\r\n    $mediaWYSIWYG = $mediapic->getValue(\'med_descriptionWYSIWYG\' . $languageSuffix);\r\n}\r\nif ($this->getValue(\'art_picture\') != \'\') {\r\n    $header = \'<div class=\"lac-slider\"><span></span></div>\r\n    <div class=\"main-banner-- main-banner\">\r\n    <div class=\"lac-container\">\r\n    <div class=\"lac-item\">\r\n    <img alt=\"\'.$this->getValue(\'name\').\'\" class=\"main-banner__img\" src=\"\'.rex_url::frontendController([\'rex_media_type\' => \'fullscreen\', \'rex_media_file\' => $headerpic]).\'\"/>\';\r\n    // Darken header picture\r\n    // if ($darken == \'\')  $darken = \'0.35\'; // Default darken 35%\r\n    // $header .= \'\r\n    // <div class=\"layer\" style=\"opacity: \'.$darken.\';\"></div>\';\r\n    $header .= \'\r\n    <div class=\"main-banner__data cross-center\">\';\r\n    if ($headerpic != \'\') {\r\n        $header .= \'\r\n        <h1 class=\"w1\">\'.$mediapictitle.\'</h1>\r\n        \'.$mediaWYSIWYG;\r\n    }\r\n    $header .= \'\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\';\r\n}\r\n    // If gallery exists,\r\n    // show gallery instead of header picture\r\n    if ($this->getValue(\'art_gallery\') != \'\') {\r\n        $header = \'\r\n        <div class=\"lac-slider\">\';\r\n        $imagelist = explode(\',\', $this->getValue(\'art_gallery\'));\r\n            foreach ($imagelist as $file) {\r\n                $media = rex_media::get($file);\r\n                if ($media) {\r\n                    $mediadesc = str_replace(array(\"\\r\\n\", \"\\n\", \"\\r\"), \' \', $media->getValue(\'med_description\' . $languageSuffix));\r\n					// english\r\n                    $mediatitle = $media->getValue(\'med_gallery_title\' . $languageSuffix);\r\n                    $mediatext = $media->getValue(\'med_descriptionWYSIWYG\' . $languageSuffix);\r\n                    // $mediatext = $media->getValue(\'med_gallery_text\' . $languageSuffix);\r\n                    // $medialinktext = $media->getValue(\'med_gallery_link_text\' . $languageSuffix);\r\n					// $medialink = $media->getValue(\'med_gallery_link\');\r\n					// $mediadarken = $media->getValue(\'med_darken\');\r\n                    $header .= \'\r\n                    <div class=\"main-banner-- main-banner\">\r\n                    <div class=\"lac-container\">\r\n                    <div class=\"lac-item\">\';\r\n                    // if ($mediadarken == \'\') $mediadarken = \'0.35\'; // Default darken 35%\r\n                    // $header .= \'\r\n                    // <div class=\"overlay\" style=\"opacity: \'.$mediadarken.\';\"></div>\';   \r\n                    $header .= \'\r\n                    <img alt=\"\'.$mediatitle.\'\" class=\"main-banner__img\" src=\"\'.rex_url::frontendController([\'rex_media_type\' => \'fullscreen\', \'rex_media_file\' => $file]).\'\"/>\';\r\n                    if ($mediatitle != \'\' || $mediatext != \'\') {\r\n                        $header .= \'\r\n                        <div class=\"main-banner__data cross-center\">\r\n                        <h1>\'.$file.\'</h1>\r\n                        \';\r\n                                    if ($mediatitle != \'\') {\r\n                                        $header .= \'\r\n                                        <h1 class=\"w1\">\'.$mediatitle.\'</h1>\';\r\n                                    }\r\n                                    if ($mediatitle != \'\') {\r\n                                        $header .= $mediatext;\r\n                                    }\r\n                                    // if ($medialink != \'\' && $medialinktext != \'\') {\r\n                                    //     $header .= \'\r\n                                    //     <a href=\"\'.$medialink.\'\" class=\"btn btn-theme\">\'.$medialinktext.\'</a>\';\r\n                                    // }\r\n                                    $header .= \'\r\n                            </div>\';\r\n                        }\r\n                    $header .= \'\r\n                            </div>\r\n                        </div>\r\n                    </div>\';\r\n                }\r\n            }        \r\n        $header .= \'\r\n        </div>\';\r\n}\r\n\r\necho $header;\r\n?>',0,'admin','admin','2019-01-31 11:31:06','2019-02-05 17:20:33','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0);
/*!40000 ALTER TABLE `rex_template` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_user_role`;
CREATE TABLE `rex_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `perms` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yform_email_template`;
CREATE TABLE `rex_yform_email_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `mail_from` varchar(191) NOT NULL,
  `mail_from_name` varchar(191) NOT NULL,
  `mail_reply_to` varchar(191) NOT NULL,
  `mail_reply_to_name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `body_html` text NOT NULL,
  `attachments` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yform_field`;
CREATE TABLE `rex_yform_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prio` int(11) NOT NULL,
  `type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_hidden` tinyint(1) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_required` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_history`;
CREATE TABLE `rex_yform_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dataset` (`table_name`,`dataset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_history_field`;
CREATE TABLE `rex_yform_history_field` (
  `history_id` int(11) NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`history_id`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_table`;
CREATE TABLE `rex_yform_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_amount` int(11) NOT NULL DEFAULT '50',
  `list_sortfield` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'id',
  `list_sortorder` enum('ASC','DESC') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ASC',
  `prio` int(11) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  `mass_deletion` tinyint(1) NOT NULL,
  `mass_edit` tinyint(1) NOT NULL,
  `schema_overwrite` tinyint(1) NOT NULL DEFAULT '1',
  `history` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yrewrite_alias`;
CREATE TABLE `rex_yrewrite_alias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias_domain` varchar(191) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `clang_start` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yrewrite_domain`;
CREATE TABLE `rex_yrewrite_domain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(191) NOT NULL,
  `mount_id` int(11) NOT NULL,
  `start_id` int(11) NOT NULL,
  `notfound_id` int(11) NOT NULL,
  `clangs` varchar(191) NOT NULL,
  `clang_start` int(11) NOT NULL,
  `clang_start_hidden` tinyint(1) NOT NULL,
  `robots` text NOT NULL,
  `title_scheme` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `auto_redirect` tinyint(1) NOT NULL,
  `auto_redirect_days` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_yrewrite_forward`;
CREATE TABLE `rex_yrewrite_forward` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `url` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `article_id` int(11) NOT NULL,
  `clang` int(11) NOT NULL,
  `extern` varchar(191) NOT NULL,
  `media` varchar(191) NOT NULL,
  `movetype` varchar(191) NOT NULL,
  `expiry_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS = 1;