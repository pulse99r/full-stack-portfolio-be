\c messages_dev;

DROP TABLE IF EXISTS advert;
DROP TABLE IF EXISTS favorited_ads;


CREATE TABLE advert(
  advert_id SERIAL PRIMARY KEY,
  banner VARCHAR,
  product_name TEXT,
  product_img TEXT,
  product_desc TEXT,
  product_size TEXT,
  product_price VARCHAR(7),
  available_at TEXT[],
  categories TEXT[],
  shop_now TEXT
);

CREATE TABLE favorited_ads(
  seq_num SERIAL PRIMARY KEY,
  favorite_ad_id INTEGER,
  favorited_by INTEGER,
  date_favorited timestamp,
  active_favorite BOOLEAN
);