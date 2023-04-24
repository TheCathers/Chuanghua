package club.chuanghua.controller;

import club.chuanghua.pojo.User;
import club.chuanghua.service.userService.UserService;
import club.chuanghua.service.userService.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    //Controller调service层
    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;


    //登录验证
    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session, Model model) {
        User user = userService.selectSingleUser(username);
        if (user != null) {
            if (password.equals(user.getPassword())) {

                session.setAttribute("loginUserInfo", user);
                return "redirect:/allTopic";
            } else {
                model.addAttribute("error", "密码错误");
                return "login";
            }
        } else {
            model.addAttribute("error", "用户名不存在");
            return "login";
        }

    }
    //退出登录
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("loginUserInfo");
        return "login";
    }
}
