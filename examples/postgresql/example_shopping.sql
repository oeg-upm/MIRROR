CREATE TABLE IF NOT EXISTS offer1 (
  offerid varchar(255) NOT NULL,
  idplace varchar(255) NOT NULL,
  idproduct varchar(255) NOT NULL,
  idvendor varchar(255) NOT NULL,
  price integer NOT NULL,
  PRIMARY KEY (offerid)
) ;

INSERT INTO offer1 (offerid, idplace, idproduct, idvendor, price) VALUES
('OF 01', 'PL 01', 'PR 01', 'VD 01', 100),
('OF 02', 'PL 01', 'PR 01', 'VD 02', 200),
('OF 03', 'PL 01', 'PR 02', 'VD 01', 300),
('OF 04', 'PL 01', 'PR 02', 'VD 02', 400),
('OF 05', 'PL 02', 'PR 01', 'VD 01', 500),
('OF 06', 'PL 02', 'PR 01', 'VD 02', 600),
('OF 07', 'PL 02', 'PR 02', 'VD 01', 700),
('OF 08', 'PL 02', 'PR 02', 'VD 02', 800);

CREATE TABLE IF NOT EXISTS offer2 (
  idplace varchar(255) NOT NULL,
  idproduct varchar(255) NOT NULL,
  idvendor varchar(255) NOT NULL,
  price integer NOT NULL,
  PRIMARY KEY (idplace,idproduct,idvendor)
) ;

INSERT INTO offer2 (idplace, idproduct, idvendor, price) VALUES
('PL 01', 'PR 01', 'VD 01', 100),
('PL 01', 'PR 01', 'VD 02', 200),
('PL 01', 'PR 02', 'VD 01', 300),
('PL 01', 'PR 02', 'VD 02', 400),
('PL 02', 'PR 01', 'VD 01', 500),
('PL 02', 'PR 01', 'VD 02', 600),
('PL 02', 'PR 02', 'VD 01', 700),
('PL 02', 'PR 02', 'VD 02', 800);

CREATE TABLE IF NOT EXISTS place (
  placeid varchar(255) NOT NULL,
  planename varchar(255) NOT NULL,
  PRIMARY KEY (placeid)
) ;

INSERT INTO place (placeid, planename) VALUES
('PL 01', 'Place One'),
('PL 02', 'Place Two');

CREATE TABLE IF NOT EXISTS product (
  productid varchar(255) NOT NULL,
  productname varchar(255) NOT NULL,
  PRIMARY KEY (productid)
) ;

INSERT INTO product (productid, productname) VALUES
('PR 01', 'Product One'),
('PR 02', 'Product Two');

CREATE TABLE IF NOT EXISTS vendor (
  vendorid varchar(255) NOT NULL,
  vendorname varchar(255) NOT NULL,
  PRIMARY KEY (vendorid)
) ;

INSERT INTO vendor (vendorid, vendorname) VALUES
('VD 01', 'Vendor One'),
('VD 02', 'Vendor Two');


ALTER TABLE offer1
  ADD CONSTRAINT offer1_ibfk_1 FOREIGN KEY (idplace) REFERENCES place (placeid),
  ADD CONSTRAINT offer1_ibfk_2 FOREIGN KEY (idproduct) REFERENCES product (productid),
  ADD CONSTRAINT offer1_ibfk_3 FOREIGN KEY (idvendor) REFERENCES vendor (vendorid);

ALTER TABLE offer2
  ADD CONSTRAINT offer2_ibfk_1 FOREIGN KEY (idplace) REFERENCES place (placeid),
  ADD CONSTRAINT offer2_ibfk_2 FOREIGN KEY (idproduct) REFERENCES product (productid),
  ADD CONSTRAINT offer2_ibfk_3 FOREIGN KEY (idvendor) REFERENCES vendor (vendorid);

