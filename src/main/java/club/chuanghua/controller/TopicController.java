package club.chuanghua.controller;

import club.chuanghua.pojo.Comment;
import club.chuanghua.pojo.Topic;
import club.chuanghua.pojo.User;
import club.chuanghua.service.commentService.CommentService;
import club.chuanghua.service.topicService.TopicService;
import club.chuanghua.util.Constant;
import club.chuanghua.util.PageUtil;
import club.chuanghua.util.PartContent;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller()
public class TopicController {

    @Autowired
    @Qualifier("topicServiceImpl")
    private TopicService topicService;

    @Autowired
    @Qualifier("commentServiceImpl")
    private CommentService commentService;

    //显示全部话题
    @RequestMapping("/allTopic")
    public String allTopic(Model model,
                           @RequestParam(name = "pageIndex", required = true, defaultValue = "1") Integer pageIndex) {
        List<Topic> topics = topicService.queryAllTopic();
//        List<Topic> subList = topics.subList((pageIndex - 1) * Constant.PAGESIZE, pageIndex * Constant.PAGESIZE);
        PageUtil pageUtil = new PageUtil(pageIndex,topics.size());
        pageUtil.setTotalPageCountByRs();
        List<Topic> topicList = PartContent.subString(topics,100);
        List<Topic> sublist = pageUtil.sublist(topicList);
        model.addAttribute("topics", sublist);
        model.addAttribute("pageUtil",pageUtil);
        return "index";
    }

    //分类话题查询
    @RequestMapping("/classifyTopic")
    public String Science(Model model, String type,
                          @RequestParam(name = "pageIndex", required = true, defaultValue = "1") Integer pageIndex) {
        List<Topic> topics = new ArrayList<Topic>();
        if (type.equals("all")) {
            topics = topicService.queryAllTopic();
        } else if (type.equals("hot")) {
            topics = topicService.queryHotTopic();
        } else {
            topics = topicService.queryTopicByType(type);
        }
        PageUtil pageUtil = new PageUtil(pageIndex,topics.size());
        pageUtil.setTotalPageCountByRs();
        List<Topic> topicList = PartContent.subString(topics,100);
        List<Topic> sublist = pageUtil.sublist(topicList);
        model.addAttribute("topics", sublist);
        model.addAttribute("pageUtil",pageUtil);
        return "index";
    }


    //跳转到创建话题
    @RequestMapping("/goAddTopic")
    public String add() {
//        System.out.println("执行了/addTopic");
        return "WEB-INF/jsp/post";
    }


    //提交创建的话题并跳转到首页
    @RequestMapping("/addTopic")
    public String Submit(Topic topic, HttpSession session, String type) {

        //获取当前登录用户，并将话题的创建人设置为当前登录用户

        User user = (User) session.getAttribute("loginUserInfo");
        topic.setCreatBy(user.getUsername());
        topic.setState("审核中");
        //将话题设置为用户选择的类型，这里使用了常量TYPE_MAP
        topic.setType(Constant.TYPE_MAP.get(type));
//        System.out.println(topic.toString());
        topicService.addTopic(topic);

        return "redirect:allTopic";
    }

    //话题详情
    @RequestMapping("/topicDetails")
    public String topicDetails(Model model, int id) {
        Topic topic = topicService.queryTopicById(id);
        List<Comment> comments = commentService.queryCommentById(id);

        model.addAttribute("topic", topic);
        model.addAttribute("comments", comments);
//
//        PageHelper.startPage(Constant.STARTPAGE, Constant.PAGESIZE);
//        PageInfo<Comment> pageData = new PageInfo<Comment>(comments);
//        model.addAttribute("pageData", pageData);
        return "WEB-INF/jsp/topicDetails";
    }

    //读取所有审核中的话题
    @RequestMapping("/checkTopic")
    public String checkTopic(Model model) {
        List<Topic> topics = topicService.unaudited("审核中");
        model.addAttribute("topics", topics);
        return "WEB-INF/jsp/adminHomePage/checkTopic";
    }

    //驳回
    @RequestMapping("/topicReject")
    @ResponseBody
    public ModelAndView topicReject(int id) {
        topicService.delTopicById(id);
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("success", "success");
        return new ModelAndView(new MappingJackson2JsonView(), map);
    }

    //通过
    @RequestMapping("/topicPass")
    @ResponseBody
    public ModelAndView topicPass(int id) {
        topicService.updateTopic(id);
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("success", "success");
        return new ModelAndView(new MappingJackson2JsonView(), map);
    }
}




