package com.crud.common;
import com.crud.bean.MemberVO;
import com.crud.dao.MemberDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

public class FileUpload {
    public MemberVO uploadPhoto(HttpServletRequest request) {
        String filename ="";
        int sizeLimit = 15 * 1024 * 1024;

        String realPath = request.getServletContext().getRealPath("upload");

        File dir = new File(realPath);
        if(!dir.exists()) dir.mkdirs();

        MemberVO one = null;
        MultipartRequest multipartRequest = null ;
        try{
            multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8",new DefaultFileRenamePolicy());
            filename = multipartRequest.getFilesystemName("photo");

            one = new MemberVO() ;
            String sid = multipartRequest.getParameter("sid");
            System.out.println("The sid is:" + sid) ;
            if(sid!=null && !sid.equals("")) one.setSid(Integer.parseInt(sid));
            one.setAuthor(multipartRequest.getParameter("author")) ;
            one.setTitle(multipartRequest.getParameter("title"));
            one.setLocation(multipartRequest.getParameter("location"));
            one.setContent(multipartRequest.getParameter("content"));
            one.setGenre(multipartRequest.getParameter("genre"));
            System.out.println("Everything else:" + one.getAuthor() + one.getTitle()) ;

            if(sid!=null && !sid.equals("")){
                MemberDAO dao = new MemberDAO() ;
                String oldfilename = dao.getPhotoFilename(Integer.parseInt(sid));
                if(filename!= null && oldfilename!= null)
                    FileUpload.deleteFile(request, oldfilename);
                else if(filename == null && oldfilename != null)
                    filename = oldfilename ;
            }
            one.setPhoto(filename) ;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return one ;
    }
    public static void deleteFile(HttpServletRequest request, String filename){
        String filePath = request.getServletContext().getRealPath("upload");

        File f = new File(filePath + "/" + filename) ;
        if(f.exists()) f.delete() ;
    }
}
