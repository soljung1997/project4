package com.crud.dao;
import com.crud.bean.MemberVO;
import com.crud.common.JDBCUtil;

import java.lang.reflect.Member;
import java.sql.Connection ;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class MemberDAO {
    private Connection conn = null ;
    private PreparedStatement stmt = null ;
    private ResultSet rs = null ;

    private final String Member_GET = "select * from project4 where sid=?";
    private final String Member_INSERT = "insert into project4 " + "(author, title, location, photo, content, genre) " + " values (?,?,?,?,?,?)";
    private final String Member_UPDATE = "update project4 set author=?, title=?, location=?, photo=?, content=?, genre=? where sid=?";
    private final String Member_DELETE = "delete from project4 where sid=?";
    private final String Member_LIST = "select * from project4 order by sid desc";

    private final String Member_LIST_GENRE = "select * from project4 where genre=?" ;


    public String getPhotoFilename(int sid) {
        String filename = null ;
        try{
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_GET);
            stmt.setInt(1, sid);
            rs = stmt.executeQuery();
            if(rs.next()){
                filename = rs.getString("photo") ;
            }
            rs.close() ;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        System.out.println("===> JDBC로 getPhotoFilename() 기능 처리");
        return filename ;
    }
    public int insertMember(MemberVO vo) {
        int result = 0 ;
        System.out.println("===> JDBC로 insertMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_INSERT);
            stmt.setString(1, vo.getAuthor());
            stmt.setString(2, vo.getTitle());
            stmt.setString(3, vo.getLocation());
            stmt.setString(4, vo.getPhoto());
            stmt.setString(5, vo.getContent());
            stmt.setString(6, vo.getGenre());
            result = stmt.executeUpdate() ;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    public MemberVO getMember(int sid) {
        MemberVO one = new MemberVO();
        System.out.println("===> JDBC로 getMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_GET);
            stmt.setInt(1, sid);
            rs = stmt.executeQuery();
            if(rs.next()) {
                one.setAuthor(rs.getString("author")) ;
                one.setTitle(rs.getString("title"));
                one.setLocation(rs.getString("location"));
                one.setPhoto(rs.getString("photo"));
                one.setContent(rs.getString("content"));
                one.setGenre(rs.getString("genre"));
                one.setRegdate(rs.getDate("regdate"));
                one.setSid(sid);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return one;
    }

    public void deleteMember(MemberVO vo) {
        System.out.println("===> JDBC로 deleteMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_DELETE);
            stmt.setInt(1, vo.getSid());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int updateMember(MemberVO vo) {
        System.out.println("===> JDBC로 updateMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            System.out.println("SID: " + vo.getSid());
            stmt = conn.prepareStatement(Member_UPDATE);
            stmt.setString(1, vo.getAuthor());
            stmt.setString(2, vo.getTitle());
            stmt.setString(3, vo.getLocation());
            stmt.setString(4, vo.getPhoto());
            stmt.setString(5, vo.getContent());
            stmt.setString(6, vo.getGenre());
            stmt.setInt(7, vo.getSid());

            System.out.println(vo.getSid() + "-" + vo.getAuthor() + "-" + vo.getTitle() + "-" + vo.getLocation() + "-" + vo.getPhoto() + "-" + vo.getContent() + "-" + vo.getGenre());
            int rowsAffected = stmt.executeUpdate();
            System.out.println("Number of rows affected: " + rowsAffected);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public List<MemberVO> getListByGenre(String genre){
        List<MemberVO> list = new ArrayList<MemberVO>();
        System.out.println("===> JDBC로 getListByGenre() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_LIST_GENRE);
            stmt.setString(1, genre);
            rs = stmt.executeQuery();
            while(rs.next()) {
                MemberVO one = new MemberVO();
                one.setSid(rs.getInt("sid")) ;
                one.setAuthor(rs.getString("author")) ;
                one.setTitle(rs.getString("title"));
                one.setLocation(rs.getString("location"));
                one.setPhoto(rs.getString("photo"));
                one.setContent(rs.getString("content"));
                one.setGenre(rs.getString("genre"));
                one.setRegdate(rs.getDate("regdate"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    public List<MemberVO> getList(){
        List<MemberVO> list = new ArrayList<MemberVO>();
        System.out.println("===> JDBC로 getList() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_LIST);
            rs = stmt.executeQuery();
            MemberVO one = new MemberVO();
            while(rs.next()) {
                one = new MemberVO();
                one.setSid(rs.getInt("sid")) ;
                one.setAuthor(rs.getString("author")) ;
                one.setTitle(rs.getString("title"));
                one.setLocation(rs.getString("location"));
                one.setPhoto(rs.getString("photo"));
                one.setContent(rs.getString("content"));
                one.setGenre(rs.getString("genre"));
                one.setRegdate(rs.getDate("regdate"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
