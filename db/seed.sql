\c messages_dev

INSERT INTO users (f_name, l_name, email, password_hash) VALUES
  ('Kenti','Johnson','raymondjohnson@pursuit.org','lazyBird!@3&Wi'),
  ('Bugs','Bunny','bbunny@disney.com','disney'),
  ('Pru','Halliwell','prudencehalliwell@charmed.com','PowerOfThree'),
  ('Phoebe','Halliwell','phoebehalliwell@charmed.com','PowerOfThree'),
  ('Piper','Halliwell','piperhalliwell@charmed.com','PowerOfThree'),
  ('Paige','Halliwell','paigehalliwell@charmed.com','PowerOfThree'),
  ('Will','Robinson','will@lostinspace.com','robotrobot'),
  ('Penny','Robinson','penny@lostinspace.com','robotrobot'),
  ('Daffy','Duck','dduck@disney.com','disney');

INSERT INTO profiles (user_id, banner, bio, related) VALUES
  (1, 'Software Engineer and Guitar Plyer',
  'I''m passionate about playing the guitar.  I am also passionate about Software Engineering.  And am currently working on combining my two passions.','{1}'),
  (2, 'Possibly the Greatest Cartoon Character of All Time!',
  'I''ve had a great life...confounded Elmer Fudd for years, drove Daffy Duck crazy, starred in thousands of Saturday morning shows, even got to meet Michael Jordan! Cool!!','{1}'),
  (3, 'Eldest of the Charmed Ones',
  'My sisters and I do battle with demons, witches and protect the innocent from evil', '{1,4,5,6}'),
  (4, 'I''m the third sister of the Charmed Ones',
  'My sisters and I do battle with demons, witches and protect the innocent from evil', '{1,3,5,6}'),
  (5, 'I''m the second sister of the Charmed Ones',
  'My sisters and I do battle with demons, witches and protect the innocent from evil','{1,3,4,6}'),
  (6, 'I''m the fourth sister of the Charmed Ones',
  'My sisters and I do battle with demons, witches and protect the innocent from evil. I share a mother, but have a different father than my sisters.  I''m half Whitelighter','{1,3,4,5}'),
  (7, 'You''d think they would have given me pants!','I''ve had a great life...like my father Donald, I''ve confounded Elmer Fudd for years, drove Bugs Bunny crazy, starred in thousands of Saturday morning shows, even got to meet Michael Jordan! Cool!!','{1,2}');

  INSERT INTO messages (topic, msg_body, sent_at, sender_id, recipient_id, reply_to) VALUES
  ('Welcome to the New Messaging App!','Here''s wishing you a great day today! And a great experience using his friendly messaging app. Connect with friends and send messages to your heart''s content!',NOW(),'1','{2,3,4,5,6,7,8,9}',null),
  ('Happy Monday!','Heres wishing everyone a great day today...the forecast calls for a really great, sunny day!',NOW(),'1','{2,3,4,5,6,7,8,9}',null),
  ('Happy Monday!','Thank you! Have a great day, too!!',NOW(),'3','{1}','2'),
  ('Happy Monday!','Thank you! Thanks for being a Charmed fan, Kenti!',NOW(),'4','{1}','2'),
  ('Hi Paige!','Just joined this new messaging site.  Come join us!',NOW(),'4','{5,6}',null);

  INSERT INTO msg_read_at(msg_id, recipient_id, msg_read_at, msg_read) VALUES
  (5, 6, NOW(), true);