package club.chuanghua.controller;

import club.chuanghua.pojo.Comment;
import club.chuanghua.pojo.Topic;
import club.chuanghua.pojo.User;
import club.chuanghua.service.commentService.CommentService;
import club.chuanghua.service.topicService.TopicService;
import club.chuanghua.service.userService.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    @Autowired
    @Qualifier("topicServiceImpl")
    private TopicService topicService;

    @Autowired
    @Qualifier("commentServiceImpl")
    private CommentService commentService;

    //用户注册页的ajax请求处理
    @RequestMapping("/register")
    public ModelAndView register(String username) {
        Map<String, String> map = new HashMap<String, String>();
        if (userService.selectSingleUser(username) != null) {
            map.put("result", "exist");
        } else {
            map.put("result", "true");
        }
        return new ModelAndView(new MappingJackson2JsonView(), map);

    }

    //添加用户
    @RequestMapping("/addUser")
    public String addUser(User user) {
//        System.out.println(user.toString());
        userService.addUser(user);
        return "login";
    }

    //跳转到个人主页
    @RequestMapping("goHomePage")
    public String goHomePage(HttpSession session, Model model) {
        User user = new User();
        if(session.getAttribute("loginUserInfo")!=null){
            user = (User) session.getAttribute("loginUserInfo");
            model.addAttribute("user", user);
        }else {
            return "login";
        }
        List<Topic> topics = topicService.queryTopicByCreator(user.getUsername());
        List<Comment> comments = commentService.queryCommentByCreator(user.getUsername());
        model.addAttribute("topics", topics);
        model.addAttribute("comments", comments);
        if (user.getUserRole().equals("管理员")){
            return "WEB-INF/jsp/adminHomePage/PersonInfo";
        }else{
            return "WEB-INF/jsp/userHomePage";
        }
    }


}


