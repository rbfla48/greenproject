INSERT INTO member_tbl VALUES
('abcd1234',
 '별명',
 '홍길동',
 'm',
 'green1@abcd.com',
 '010-1234-1111',
 '1990-1-1',  
 '12345',  
 '서울 강남구 역삼동*그린',
  SYSDATE);
        
INSERT INTO users VALUES 
('abcd1234', 
 '$2a$10$b8AMk778MLZM5MnB.ApzWu8wH1VVX0NWWxfkSxeRjcgpINrOt/YNm',
  1);
		  
INSERT INTO user_roles VALUES 
(user_roles_seq.nextval,
 'abcd1234',  
 'ROLE_USER'); 

-----------------------------------------

UPDATE users SET password='$2a$10$Sq6a3aJdtkVxKSjXYcFgSuf/1OPB2IALLMJUlvKNoSUdChtOPSNMq'
WHERE username='java1234';
