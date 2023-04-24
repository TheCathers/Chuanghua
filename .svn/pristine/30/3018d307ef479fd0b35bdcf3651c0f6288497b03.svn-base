package club.chuanghua.util;

import club.chuanghua.pojo.Topic;

import java.util.List;

//话题内容截取
public class PartContent {
    public static List<Topic> subString(List<Topic> topics,int cutCounts){
        for (Topic topic : topics) {
            if(topic.getContent().length()>cutCounts){
                topic.setContent("   "+topic.getContent().substring(0,cutCounts)+".....");
            }
        }
        return topics;
    }

}
