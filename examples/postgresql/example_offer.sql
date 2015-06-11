-- ----------------------------
-- Table structure for "place"
-- ----------------------------
DROP TABLE IF EXISTS "place";
CREATE TABLE "place" (
  "placeid" varchar(255) NOT NULL,
  "planename" varchar(255) NOT NULL,
  PRIMARY KEY ("placeid")
);

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO "place" VALUES ('PL 01', 'Place One');
INSERT INTO "place" VALUES ('PL 02', 'Place Two');

-- ----------------------------
-- Table structure for "product"
-- ----------------------------
DROP TABLE IF EXISTS "product";
CREATE TABLE "product" (
  "productid" varchar(255) NOT NULL,
  "productname" varchar(255) NOT NULL,
  PRIMARY KEY ("productid")
);

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO "product" VALUES ('PR 01', 'Product One');
INSERT INTO "product" VALUES ('PR 02', 'Product Two');

-- ----------------------------
-- Table structure for "vendor"
-- ----------------------------
DROP TABLE IF EXISTS "vendor";
CREATE TABLE "vendor" (
  "vendorid" varchar(255) NOT NULL,
  "vendorname" varchar(255) NOT NULL,
  PRIMARY KEY ("vendorid")
);

-- ----------------------------
-- Records of vendor
-- ----------------------------
INSERT INTO "vendor" VALUES ('VD 01', 'Vendor One');
INSERT INTO "vendor" VALUES ('VD 02', 'Vendor Two');

-- ----------------------------
-- Table structure for "offer1"
-- ----------------------------
DROP TABLE IF EXISTS "offer1";
CREATE TABLE "offer1" (
  "offerid" varchar(255) NOT NULL,
  "idplace" varchar(255) NOT NULL,
  "idproduct" varchar(255) NOT NULL,
  "idvendor" varchar(255) NOT NULL,
  "price" integer NOT NULL,
  PRIMARY KEY ("offerid"),
  CONSTRAINT "offer1_ibfk_1" FOREIGN KEY ("idplace") REFERENCES "place" ("placeid"),
  CONSTRAINT "offer1_ibfk_2" FOREIGN KEY ("idproduct") REFERENCES "product" ("productid"),
  CONSTRAINT "offer1_ibfk_3" FOREIGN KEY ("idvendor") REFERENCES "vendor" ("vendorid")
);

-- ----------------------------
-- Records of offer1
-- ----------------------------
INSERT INTO "offer1" VALUES ('OF 01', 'PL 01', 'PR 01', 'VD 01', '100');
INSERT INTO "offer1" VALUES ('OF 02', 'PL 01', 'PR 01', 'VD 02', '200');
INSERT INTO "offer1" VALUES ('OF 03', 'PL 01', 'PR 02', 'VD 01', '300');
INSERT INTO "offer1" VALUES ('OF 04', 'PL 01', 'PR 02', 'VD 02', '400');
INSERT INTO "offer1" VALUES ('OF 05', 'PL 02', 'PR 01', 'VD 01', '500');
INSERT INTO "offer1" VALUES ('OF 06', 'PL 02', 'PR 01', 'VD 02', '600');
INSERT INTO "offer1" VALUES ('OF 07', 'PL 02', 'PR 02', 'VD 01', '700');
INSERT INTO "offer1" VALUES ('OF 08', 'PL 02', 'PR 02', 'VD 02', '800');

-- ----------------------------
-- Table structure for "offer2"
-- ----------------------------
DROP TABLE IF EXISTS "offer2";
CREATE TABLE "offer2" (
  "idplace" varchar(255) NOT NULL,
  "idproduct" varchar(255) NOT NULL,
  "idvendor" varchar(255) NOT NULL,
  "price" integer NOT NULL,
  PRIMARY KEY ("idplace","idproduct","idvendor"),
  CONSTRAINT "offer2_ibfk_1" FOREIGN KEY ("idplace") REFERENCES "place" ("placeid"),
  CONSTRAINT "offer2_ibfk_2" FOREIGN KEY ("idproduct") REFERENCES "product" ("productid"),
  CONSTRAINT "offer2_ibfk_3" FOREIGN KEY ("idvendor") REFERENCES "vendor" ("vendorid")
);

-- ----------------------------
-- Records of offer2
-- ----------------------------
INSERT INTO "offer2" VALUES ('PL 01', 'PR 01', 'VD 01', '100');
INSERT INTO "offer2" VALUES ('PL 01', 'PR 01', 'VD 02', '200');
INSERT INTO "offer2" VALUES ('PL 01', 'PR 02', 'VD 01', '300');
INSERT INTO "offer2" VALUES ('PL 01', 'PR 02', 'VD 02', '400');
INSERT INTO "offer2" VALUES ('PL 02', 'PR 01', 'VD 01', '500');
INSERT INTO "offer2" VALUES ('PL 02', 'PR 01', 'VD 02', '600');
INSERT INTO "offer2" VALUES ('PL 02', 'PR 02', 'VD 01', '700');
INSERT INTO "offer2" VALUES ('PL 02', 'PR 02', 'VD 02', '800');

