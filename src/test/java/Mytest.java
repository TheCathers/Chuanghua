import club.chuanghua.pojo.Topic;
import club.chuanghua.service.topicService.TopicService;
import club.chuanghua.service.userService.UserService;
import club.chuanghua.util.Data;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class Mytest {
    @Test
    public void Test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService userServiceImpl = (UserService) context.getBean("userServiceImpl");
        int i = userServiceImpl.userCount();
        System.out.println(i);
    }
//    @Test
//    public void test(){
////        Calendar date = Calendar.getInstance();
////        date.set(2021, Calendar.APRIL, -1);
////        System.out.println(date.get(Calendar.YEAR)+
////                "-"+date.get(Calendar.MONTH)+
////                "-"+date.get(Calendar.DATE));
//        Calendar date = Calendar.getInstance();
//        date.setTime(new Date());
//        date.add(Calendar.DATE,-1);
//        SimpleDateFormat sdf=new SimpleDateFormat("MM-dd");
//        String date2 = sdf.format(date.getTime());
//        System.out.println(date2);
//    }
}
