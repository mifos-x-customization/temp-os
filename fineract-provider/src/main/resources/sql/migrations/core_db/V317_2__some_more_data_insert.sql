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

INSERT INTO `m_code_value` (`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) VALUES ((SELECT `id` FROM `m_code` mc WHERE mc.code_name = "ClientRoles" AND is_system_defined), 'Leader', 'Client Roles', 1, NULL, 1, 0);

INSERT INTO `m_code_value` (`code_id`, `code_value`, `code_description`, `order_position`, `code_score`, `is_active`, `is_mandatory`) VALUES ((SELECT `id` FROM `m_code` mc WHERE mc.code_name = "ClientRoles" AND is_system_defined), 'Sub Leader', 'Client Roles', 1, NULL, 1, 0);

INSERT INTO `m_permission` (`grouping`,`code`,`entity_name`,`action_name`,`can_maker_checker`) VALUES ('organisation', 'VIEW_BULKIMPORT', 'OFFICE', 'READ', 0);

insert into acc_gl_account values (1,'Deposit Accounts Portfolio',NULL,'.',10100,'0','1' ,'2',2,NULL,NULL);
insert into acc_gl_account values (2,'Overpayment Liability',NULL,'.',10200,'0','1' ,'1',2,NULL,NULL);
insert into acc_gl_account values (3,'Interest Payable',NULL,'.',10300,'0','1' ,'2',2,NULL,NULL);
insert into acc_gl_account values (4,'Pass-Through Collections',NULL,'.',10400,'0','1' ,'2',2,NULL,NULL);
insert into acc_gl_account values (5,'External Credits and Borrowings',NULL,'.',10500,'0','1' ,'2',2,NULL,NULL);
insert into acc_gl_account values (6,'Accrued Expenses and Provisions',NULL,'.',10600,'0','1' ,'2',2,NULL,NULL);
insert into acc_gl_account values (7,'Other Liabilities',NULL,'.',10700,'0','1' ,'2',2,NULL,NULL);
insert into acc_gl_account values (8,'Fixed Assets',NULL,'.',20100,'0','1' ,'2',1,NULL,NULL);
insert into acc_gl_account values (9,'Investments',NULL,'.',20200,'0','1' ,'2',1,NULL,NULL);
insert into acc_gl_account values (10,'Cash',NULL,'.',20300,'0','1' ,'2',1,NULL,NULL);
insert into acc_gl_account values (11,'Bank Accounts',NULL,'.',20400,'0','1' ,'2',1,NULL,NULL);
insert into acc_gl_account values (12,'Lending Portfolio',NULL,'.',20500,'0','1' ,'2',1,NULL,NULL);
insert into acc_gl_account values (13,'Interest and Fees Receivable',NULL,'.',20600,'0','1' ,'2',1,NULL,NULL); 
insert into acc_gl_account values (14,'Advance Payments',NULL,'.',20700,'0','1' ,'2',1,NULL,NULL); 
insert into acc_gl_account values (15,'Reserves for Possible Losses',NULL,'.',20800,'0','1' ,'2',1,NULL,NULL); 
insert into acc_gl_account values (16,'Accrued Income',NULL,'.',20900,'0','1' ,'2',1,NULL,NULL);
insert into acc_gl_account values (17,'Suspense Account',NULL,'.',9999,'0','1' ,'1',1,NULL,NULL);
insert into acc_gl_account values (18,'Portfolio Earnings',NULL,'.',30100,'0','1' ,'2',4,NULL,NULL);
insert into acc_gl_account values (19,'Non Portfolio Income',NULL,'.',30200,'0','1' ,'2',4,NULL,NULL);
insert into acc_gl_account values (20,'Portfolio Expenses',NULL,'.',40100,'0','1' ,'2',5,NULL,NULL);
insert into acc_gl_account values (21,'General And Administrative Expenses',NULL,'.',40200,'0','1' ,'2',5,NULL,NULL);
insert into acc_gl_account values (22,'Sundry Expenses',NULL,'.',40800,'0','1' ,'2',5,NULL,NULL);
insert into acc_gl_account values (23,'Repairs and Maintenance',NULL,'.',40900,'0','1' ,'2',5,NULL,NULL);
insert into acc_gl_account values (24,'Depreciation and Amortization',NULL,'.',41000,'0','1' ,'2',5,NULL,NULL);
insert into acc_gl_account values (25,'Equity and Share Capital',NULL,'.',50100,'0','1' ,'2',3,NULL,NULL);
insert into acc_gl_account values (26,'Opening Balances Contra Account',NULL,'.',9099,'0','1' ,'2',3,NULL,NULL);
insert into acc_gl_account values (27,'Voluntary Savings',1,'.1.',10101,0,1,2,2,NULL,NULL);
insert into acc_gl_account values (28,'Mandatory Savings',1,'.1.',10102,0,1,2,2,NULL,NULL);
insert into acc_gl_account values (29,'Term Deposits',1,'.1.',10103,0,1,2,2,NULL,NULL);
insert into acc_gl_account values (30,'Recurring Deposits',1,'.1.',10104,0,1,1,2,NULL,NULL);
insert into acc_gl_account values (31,'Furniture and Fixtures',8,'.8.',20101,0,1,1,1,NULL,NULL);
insert into acc_gl_account values (32,'Cash In Hand',10,'.10.',20301,0,1,1,1,NULL,NULL);
insert into acc_gl_account values (33,'Petty Cash',10,'.10.',20302,0,1,1,1,NULL,NULL);
insert into acc_gl_account values (34,'Loans to Customers',12,'.12.',20501,0,1,1,1,NULL,NULL);
insert into acc_gl_account values (35,'Current Account Overdrafts',12,'.12.',20502,0,1,1,1,NULL,NULL);
insert into acc_gl_account values (36,'Fees and Charges',18,'.18.',30101,0,1,1,4,NULL,NULL);
insert into acc_gl_account values (37,'Penalties',18,'.18.',30102,0,1,1,4,NULL,NULL);
insert into acc_gl_account values (38,'Interest Received from Borrowers',18,'.18.',30103,0,1,1,4,NULL,NULL);
insert into acc_gl_account values (39,'Insurance Charges',18,'.18.',30104,0,1,1,4,NULL,NULL);
insert into acc_gl_account values (40,'Other Operating Income',18,'.18.',30105,0,1,1,4,NULL,NULL);
insert into acc_gl_account values (41,'Losses Written Off',20,'.20.',40101,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (42,'Interest Paid To Depositors',20,'.20.',40102,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (43,'Loan Collection Expenses',20,'.20.',40103,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (44,'Salaries and Wages',21,'.21.',40300,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (45,'Professional Expenses',21,'.21.',40400,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (46,'Travel and Conveyance Expenses',21,'.21.',40500,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (47,'Training Expenses',21,'.21.',40600,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (48,'Office Expenses',21,'.21.',40700,0,1,2,5,NULL,NULL);
insert into acc_gl_account values (49,'Printing and Stationery',48,'.21.48.',40701,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (50,'Telephone Charges',48,'.21.48.',40702,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (51,'Electricity Charges',48,'.21.48.',40703,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (52,'Rent Paid',48,'.21.48.',40704,0,1,1,5,NULL,NULL);
insert into acc_gl_account values (53,'Internet Charges',48,'.21.48.',40705,0,1,1,5,NULL,NULL); 
insert into acc_gl_account values (54,'Recovery Repayments',18,'.18.',30110,0,1,1,4,NULL,NULL); 
insert into acc_gl_account values (55,'Interest Receivable',NULL,'.',20601,'0','1' ,'1',1,NULL,NULL); 
insert into acc_gl_account values (56,'Fees Receivable',NULL,'.',20602,'0','1' ,'1',1,NULL,NULL);
insert into acc_gl_account values (57,'Penalties Receivable',NULL,'.',20603,'0','1' ,'1',1,NULL,NULL);
