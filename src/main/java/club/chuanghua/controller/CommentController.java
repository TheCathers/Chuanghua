package club.chuanghua.controller;

import club.chuanghua.pojo.Comment;
import club.chuanghua.pojo.User;
import club.chuanghua.service.commentService.CommentService;
import club.chuanghua.service.topicService.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Controller
public class CommentController {
    @Autowired
    @Qualifier("commentServiceImpl")
    private CommentService commentService;

    @RequestMapping("viewComments")
    public void viewComments(Model model, int id) {

        List<Comment> comments = commentService.queryCommentById(id);
        model.addAttribute("comments", comments);
    }

    @RequestMapping("addComment")
    @ResponseBody
    public void addComment(String content, HttpSession session, int id) {
        Comment comment = new Comment();
        User user = (User) session.getAttribute("loginUserInfo");
        comment.setContent(content);
        comment.setState("审核中");
        comment.setCreatBy(user.getUsername());
        comment.setCommentObject(id);
//        System.out.println(comment.toString());
        commentService.addComment(comment);
    }

    @RequestMapping("checkComment")
    public String checkComment(Model model){
        List<Comment> comments = commentService.unaudited("审核中");
        model.addAttribute("comments",comments);
        return "WEB-INF/jsp/adminHomePage/checkComment";
    }

    @RequestMapping("commentPass")
    public ModelAndView commentPass(int id) {
        commentService.updateComment(id);
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("success", "success");
        return new ModelAndView(new MappingJackson2JsonView(), map);
    }

    @RequestMapping("commentReject")
    public ModelAndView commentReject(int id) {
        commentService.delCommentById(id);
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("success", "success");
        return new ModelAndView(new MappingJackson2JsonView(), map);
    }

}
