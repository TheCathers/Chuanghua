package club.chuanghua.controller;

import club.chuanghua.pojo.User;
import club.chuanghua.service.userService.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@Controller
public class UserHomePageController {
    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    //个人信息
    @RequestMapping("/PersonInfo")
    public String user(Model model, HttpSession session){
//        User user=(User)session.getAttribute("loginUserInfo");
//        //userService.selectSingleUser(user.getUsername())
//        //       List<User>users= Collections.singletonList(user);
//        model.addAttribute("user",user);
//        System.out.println(model.toString());
//        System.out.println("这里User执行了");
        return "redirect:goHomePage";
    }

    //跳转到修改密码页面
    @RequestMapping("/goChangePwd")
    public String goChangePwd(){
        return "WEB-INF/jsp/adminHomePage/changePwd";
    }

    //修改密码
    @RequestMapping("/changePwd")
    public String password(HttpSession session ,String password){
        User user = (User) session.getAttribute("loginUserInfo");
        user.setPassword(password);
        userService.changePwd(user);
        return "login";
    }


//    public  String whole(HttpSession session,Model model){
//        User user = (User) session.getAttribute("loginUserInfo");
//        return "redirect:/userHomePage";
//    }
}