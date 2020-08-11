-- pw : abcd1234 
CREATE OR REPLACE PROCEDURE dummy_member_gen_proc
IS
BEGIN
 
    -- FOR i IN 1..10 LOOP
    FOR i IN 11..100 LOOP
    
        INSERT INTO member_tbl VALUES
        ('green_' || (1000+i),
         '별명',
         '김' || (100+i),
         'm',
         'green_' || i || '@abcd.com',
         '010-1234-' || (1000+i),
         '1990-1-1',  
         '12345',  
         '서울 강남구 역삼동*자바/파이썬반',
         SYSDATE);
                
        INSERT INTO users VALUES 
		('green_' || (1000+i), 
		 '$2a$10$b8AMk778MLZM5MnB.ApzWu8wH1VVX0NWWxfkSxeRjcgpINrOt/YNm',
		  1);
		  
		INSERT INTO user_roles VALUES 
		(user_roles_seq.nextval,
		 'green_' || (1000+i),  
		 'ROLE_USER');  
         
     END LOOP;
 
    COMMIT;    
END;
/
 
EXECUTE dummy_member_gen_proc;

------------------------------------------------

UPDATE member_tbl SET
   member_address='서울 강남구 역삼동*그린 아카데미 강남점 장연빌딩 421호';        

-------------------------------------------------
   
CREATE OR REPLACE PROCEDURE name_update_gen_proc  
IS  
      TYPE first_name_array      IS VARRAY(20) OF CLOB;  
      TYPE middle_name_array      IS VARRAY(10) OF CLOB;  
      TYPE last_name_array      IS VARRAY(10) OF CLOB;  
      first_names   first_name_array;  
      middle_names   middle_name_array;  
      last_names   last_name_array;        
      v_firstName CLOB;  
      v_middleName CLOB;  
      v_lastName CLOB;  
      totalName CLOB;  
      temp_num NUMBER(2);  
BEGIN  
      first_names := first_name_array('김','이','박','최','주','임','엄','성','남궁','독고','황','황보','송','오','유','류','윤','장','정','추');  
      middle_names := middle_name_array('숙','갑','영','순','선','원','우','이','운','성');  
      last_names := last_name_array('영','수','희','빈','민','정','순','주','연','영');  
       
      -- FOR i IN 1..10 LOOP  
      FOR i IN 11..100 LOOP
         
        temp_num := round(DBMS_RANDOM.VALUE(1,20),0);  
        v_firstName :=  first_names(temp_num);  
        temp_num := round(DBMS_RANDOM.VALUE(1,10),0);  
        v_middleName :=  middle_names(temp_num);  
        temp_num := round(DBMS_RANDOM.VALUE(1,10),0);  
        v_lastName :=  last_names(temp_num);  
        totalName := v_firstName || v_middleName || v_lastName;  
                         
        UPDATE member_tbl SET member_name = totalName  
        WHERE member_id = 'green_' || (1000+i);
 
    END LOOP;  

    COMMIT;         
  END;  
/  
 
EXECUTE name_update_gen_proc;     