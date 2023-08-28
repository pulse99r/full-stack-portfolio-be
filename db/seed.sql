\c messages_dev

INSERT INTO users (f_name, l_name, email, password_hash,create_date) VALUES
  ('Kenti','Johnson','raymondjohnson@pursuit.org','lazyBird!@3&Wi', NOW()),
  ('Bugs','Bunny','bbunny@disney.com','disney',NOW()),
  ('Pru','Halliwell','prudencehalliwell@charmed.com','PowerOfThree',NOW()),
  ('Phoebe','Halliwell','phoebehalliwell@charmed.com','PowerOfThree',NOW()),
  ('Piper','Halliwell','piperhalliwell@charmed.com','PowerOfThree',NOW()),
  ('Paige','Halliwell','paigehalliwell@charmed.com','PowerOfThree',NOW()),
  ('Will','Robinson','will@lostinspace.com','robotrobot',NOW()),
  ('Penny','Robinson','penny@lostinspace.com','robotrobot',NOW()),
  ('Daffy','Duck','dduck@disney.com','disney',NOW()),
  ('Taylor','Swift','taytay@swiftie.com','1989',NOW()),
  ('Art','Monk','amonk@rrunner.net','faster!thanU',NOW()),
  ('Mary Ellen','Kramer','mKramer@gmail.com','password',NOW()),
  ('Carmen','Reynaldo','hotgurl@gmail.com','being@Cheerful!',NOW());

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
  (7, 'You''d think they would have given me pants!','I''ve had a great life...like my father Donald, I''ve confounded Elmer Fudd for years, drove Bugs Bunny crazy, starred in thousands of Saturday morning shows, even got to meet Michael Jordan! Cool!!','{1,2}'),
  (8, null, null,'{null}'),
  (9, null, null,'{null}'),
  (10, null, null,'{null}'),
  (11, null, null,'{null}'),
  (12, null, null,'{null}'),
  (13, null, null,'{null}');

  INSERT INTO messages (topic, msg_body, sent_at, sender_id, recipient_id, reply_to) VALUES
  ('Welcome to the New Messaging App!','Here''s wishing you a great day today! And a great experience using his friendly messaging app. Connect with friends and send messages to your heart''s content!',NOW(),'1','{0}',null),
  ('Happy Monday!','Heres wishing everyone a great day today...the forecast calls for a really great, sunny day!',NOW(),'1','{0}',null),
  ('Happy Monday!','Thank you! Have a great day, too!!',NOW(),'3','{1}','2'),
  ('Happy Monday!','Thank you! Thanks for being a Charmed fan, Kenti!',NOW(),'4','{1}','2'),
  ('Hi Paige!','Just joined this new messaging site.  Come join us!',NOW(),'4','{5,6}',null),
  ('Good Morning, Vietnam!!','I love the smell of naplam in the morning! Hope you''re having as great a morning as I''m having with Hanoi Jane!!',NOW(),'1','{0}',null),
  ('Good Morning, Vietnam!!','Glad you''re having a good time! Say hello to the kids at M.A.S.H.',NOW(),'9','{1}',6),
  ('Why Don''t We Do It On The Road?','Here''s one of the most ambiguous lines from any Beatle song.  Inuendo and puns abound!',NOW(),'1','{0}',null),
  ('Why Don''t We Do It On The Road?','Loved that song! Once I got exposed to music of the Beatles, the White Album was one of my favorites. I listened to it over an over for months!',NOW(),'4','{1}',8),
  ('Why Don''t We Do It On The Road?','The Beatles were good.  Props.  But I''m more of a Led Zeppelin fan.',NOW(),'5','{4}',9),
  ('Why Don''t We Do It On The Road?','Loved ''Why Don''t We Do It On The Rood'' too! That was a good one. But I really like some of the lesser-known ones...like, ''Fixing a Hole''',NOW(),'3','{4}',9),
  ('Top 100 Songs of All Time','I''m putting together a list of the top 100 songs of all time.  What songs do you think should be on the list?',NOW(),'1','{0}',null),
  
  ('Top 100 Songs of All Time','Fool In The Rain - Led Zepplin',NOW(),'3','{1}',12),
  ('Top 100 Songs of All Time','Start Me Up - The Rolling Stones',NOW(),'4','{1}',12),
  ('Top 100 Songs of All Time','Definitely ''Stairway To Heaven''',NOW(),'3','{2}',12),
  ('Top 100 Songs of All Time','Blackbird, ,by the Beatles',NOW(),'5','{1}',12),
  ('Top 100 Songs of All Time','I don''t know...but I''m sure there''ll be one by Taylor Swift!',NOW(),'5','{1}',12),
  ('Top 100 Songs of All Time','Well I do wish! But I don''t know whether I''m in that category!',NOW(),'10','{5}',17);


  INSERT INTO msg_read_at(msg_id, recipient_id, msg_read_at, msg_read) VALUES
  (5, 6, NOW(), true);
  
