\c messages_dev;

INSERT INTO advert(banner, product_name, product_img, product_desc, product_size, product_price, available_at, categories) VALUES
  (
    'Original Pringles','Original Pringles','https://www.google.com/aclk?sa=l&ai=DChcSEwic_ueQlf2AAxVPS0cBHSSoCGMYABAOGgJxdQ&gclid=Cj0KCQjw6KunBhDxARIsAKFUGs-RDlUQwVjEakx-GQyUQNa0NzWLs0Lszq078y7OrfW1Eu6z-hU9gDsaAlj2EALw_wcB&ei=I23rZNKZMOLn5NoPv5yB-A0&sig=AOD64_13Xq7rXF1kWcH0RKE7J-fFOW4T5Q&ctype=5&q=&sqi=2&ved=2ahUKEwiSt92Qlf2AAxXiM1kFHT9OAN8Q9aACKAB6BAgIEBY&adurl=','Pringles Original Flavored Potato Crisps Chips','5.2oz','2.69','{"target.com","amazon.com"}','{"Food", "Potato Chip", "Snacks","Party Snacks"}' 
  ),
  (
    'Mrs. Butterworth''s Original Thick and Rich Pancake Syrup','Original Pringles','https://m.media-amazon.com/images/I/71VhaHRsjvL._SX679_.jpg','Mrs. Butterworth''s Original Thick and Rich Pancake Syrup.  Delighting families since 1961, the iconic bottle isn''t the only reason Mrs. Butterworth''s has long been a family favorite. Known for her delicious, buttery taste and slow pour, Mrs. Butterworth''s syrups help make breakfast into mouth-watering fun. Mrs. Butterworth''s syrup is deliciously thick and rich. Pancakes just aren’t the same without it. With several verities to choose from, make it a fun and memorable morning with Mrs. Butterworth''s syrups. So thick. So rich. And still just as sweet. Enjoy the thick, rich, and buttery taste of Mrs. Butterworth''s syrup in Original, Lite, and Sugar Free varieties. Enjoy delicious recipes, straight from Mrs. Butterworth''s Kitchen.','12 fl oz','3.99','{"target.com","amazon.com"}','{"Food", "Pancake Syrup"}' 
  ),
  ('Starbucks Doubleshot Energy Espresso Coffee, Vanilla','Starbucks Doubleshot Energy Espresso Coffee','https://m.media-amazon.com/images/I/81bBuX1DLRL._AC_UL400_.jpg','Enjoy your favorite chilled coffee drink on the go thanks to Starbucks bottled coffee drinks. All made with real Starbucks coffee, you can enjoy the flavor of your favorite café drinks at home and on the go. The perfect late afternoon pick-me-up, Starbucks bottled coffee drinks are great straight from the bottle or enjoyed over ice. Vanilla flavored','12x15 fl oz cans','27.53','{"amazon.com"}','{"Food", "Beverage", "Coffee"}' 
);


INSERT INTO favorited_ads(favorite_ad_id, favorited_by, date_favorited, active_favorite) VALUES
(
  2,1, NOW(), true
),
(
  3,1, NOW(), true
);