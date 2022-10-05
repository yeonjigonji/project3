package org.zerock.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

// Page653 MemberTests 클래스 생성 및 소스 코딩(security-context.xml 파일 추가함)
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Log4j
public class MemberTests {
   
   @Setter(onMethod_ = @Autowired)
   private PasswordEncoder pwencoder;
   
   @Setter(onMethod_ = @Autowired)
   private DataSource ds;

    //Page656 testInsertAuth() 메서드 테스트할 때 아래 testInsertMember() 주석 처리함
//   @Test
//   public void testInsertMember() {
//      String sql = "insert into tbl_member(userid, userpw, username) values (?,?,?)";
//       
//       for(int i = 0; i < 10; i++) {
//         
//         Connection con = null;
//         PreparedStatement pstmt = null;
//         
//         try {
//           con = ds.getConnection();
//           pstmt = con.prepareStatement(sql);
//           
//           pstmt.setString(2, pwencoder.encode("pw" + i));
//           
//           if(i <8) {
//             
//             pstmt.setString(1, "user"+i);
//             pstmt.setString(3,"일반사용자"+i);
//             
//           }else if (i <9) {
//             
//             pstmt.setString(1, "manager"+i);
//             pstmt.setString(3,"운영자"+i);
//             
//           }else {
//             
//             pstmt.setString(1, "admin"+i);
//             pstmt.setString(3,"관리자"+i);
//             
//           }
//           
//           pstmt.executeUpdate();
//           
//         }catch(Exception e) {
//           e.printStackTrace();
//         }finally {
//           if(pstmt != null) { try { pstmt.close();  } catch(Exception e) {} }
//           if(con != null) { try { con.close();  } catch(Exception e) {} }
//           
//         }
//       }//end for
//   }

   @Test
     public void testInsertAuth() {
       
       
       String sql = "insert into tbl_member_auth (userid, auth) values (?,?)";
       
       for(int i = 0; i < 10; i++) {
         
         Connection con = null;
         PreparedStatement pstmt = null;
         
         try {
           con = ds.getConnection();
           pstmt = con.prepareStatement(sql);
         
           // user00 ~ user79까지는 ROLE_USER 권한 부여
           if(i <8) {
             
             pstmt.setString(1, "user"+i);
             pstmt.setString(2,"ROLE_USER");

           // manager80 ~ manager89까지는 ROLE_MEMBER 권한 부여 
           }else if (i <9) {
             
             pstmt.setString(1, "manager"+i);
             pstmt.setString(2,"ROLE_MEMBER");
             
           // 그 외에 admin90 ~ admin99까지는 ROLE_ADMIN 권한 부여
           }else {
             
             pstmt.setString(1, "admin"+i);
             pstmt.setString(2,"ROLE_ADMIN");
             
           }
           
           pstmt.executeUpdate();
           
         }catch(Exception e) {
           e.printStackTrace();
         }finally {
           if(pstmt != null) { try { pstmt.close();  } catch(Exception e) {} }
           if(con != null) { try { con.close();  } catch(Exception e) {} }
           
         }
       }//end for
     }
   
   
}