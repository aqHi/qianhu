package com.qh.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

public class PictureUtil {




	public static void upload(String filePath , String fileName, MultipartFile file) {
        
        //服务器图片存放路径

        try {

            file.transferTo(new File(filePath , fileName));
            System.out.println(filePath + fileName);

            System.out.println("文件上传成功");
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("文件上传失败");
        }
    }


}