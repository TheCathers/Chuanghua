package club.chuanghua.controller;


import club.chuanghua.util.Data;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import java.util.LinkedHashMap;

@Controller
public class DataController {

    //查看数据统计
    @RequestMapping("/dataPage")
    public String goDataPage(Model model) {
        //现在的数据
        Data data = new Data();

        model.addAttribute("userCount", data.userCount);
        model.addAttribute("topicCount", data.topicCount);
        model.addAttribute("commentCount", data.commentCount);

        //昨天的数据
        model.addAttribute("userCountY", data.userCounts.get("1"));
        model.addAttribute("topicCountY", data.topicCounts.get("1"));
        model.addAttribute("commentCountY", data.commentCounts.get("1"));
        return "WEB-INF/jsp/adminHomePage/data";
    }

    //数据统计图所需的数据
    @RequestMapping("/getData")
    public ModelAndView getData() {
        Data data = new Data();
        LinkedHashMap<String, Integer> userCounts = (LinkedHashMap<String, Integer>) data.userCounts;

        return new ModelAndView(new MappingJackson2JsonView(), userCounts);
    }
}
