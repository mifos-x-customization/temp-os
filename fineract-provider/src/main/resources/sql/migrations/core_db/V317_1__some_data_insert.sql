--
-- Licensed to the Apache Software Foundation (ASF) under one
-- or more contributor license agreements. See the NOTICE file
-- distributed with this work for additional information
-- regarding copyright ownership. The ASF licenses this file
-- to you under the Apache License, Version 2.0 (the
-- "License"); you may not use this file except in compliance
-- with the License. You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing,
-- software distributed under the License is distributed on an
-- "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
-- KIND, either express or implied. See the License for the
-- specific language governing permissions and limitations
-- under the License.
--


INSERT INTO `m_code_value` (`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) VALUES ((SELECT `id` FROM `m_code` mc WHERE mc.code_name = "GROUPROLE" AND is_system_defined), 'Sub Leader', 'Group Leader Role', 1, NULL, 1, 0);
INSERT INTO `m_code_value` (`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) VALUES ((SELECT `id` FROM `m_code` mc WHERE mc.code_name = "Customer Identifier" AND is_system_defined), 'Voter Id', 'Identity Proof', 1, NULL, 1, 0);
INSERT INTO `m_code_value` (`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) VALUES ((SELECT `id` FROM `m_code` mc WHERE mc.code_name = "Customer Identifier" AND is_system_defined), 'Ration Card', 'Identity Proof', 1, NULL, 1, 0);
INSERT INTO `m_code_value` (`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) VALUES ((SELECT `id` FROM `m_code` mc WHERE mc.code_name = "Gender" AND is_system_defined), 'Male', 'Gender', 1, NULL, 1, 0);
INSERT INTO `m_code_value` (`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) VALUES ((SELECT `id` FROM `m_code` mc WHERE mc.code_name = "Gender" AND is_system_defined), 'Female', 'Gender', 1, NULL, 1, 0);
INSERT INTO `m_code` (`code_name`, `is_system_defined`) VALUES ('Character',1);
INSERT INTO `m_code` (`code_name`, `is_system_defined`) VALUES ('ClientRoles',1);

INSERT INTO `m_code_value` (`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) VALUES ((SELECT `id` FROM `m_code` mc WHERE mc.code_name = "Character" AND is_system_defined), 'Positive', 'Client Char', 1, NULL, 1, 0);

INSERT INTO `m_code_value` (`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) VALUES ((SELECT `id` FROM `m_code` mc WHERE mc.code_name = "Character" AND is_system_defined), 'Negative', 'Client Char', 1, NULL, 1, 0);




