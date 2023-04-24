package club.chuanghua.service.topicService;

import club.chuanghua.dao.topic.TopicMapper;
import club.chuanghua.pojo.Topic;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class TopicServiceImpl implements TopicService{


    //service 掉dao层：组合dao
    private TopicMapper topicMapper;
    public TopicServiceImpl(TopicMapper topicMapper) {
        this.topicMapper = topicMapper;
    }
    public void setTopicMapper(TopicMapper topicMapper) {
        this.topicMapper = topicMapper;
    }

    public int addTopic(Topic topic) {
        System.out.println("addTopic()==>"+"执行了");
        return topicMapper.addTopic(topic);
    }

    public int delTopicById(int id) {
        return topicMapper.delTopicById(id);
    }

    public int updateTopic(int id) {
        return topicMapper.updateTopic(id);
    }

    @Override
    public Topic queryTopicById(int id) {
        return topicMapper.queryTopicById(id);
    }

    @Override //按照分类查询话题
    public List<Topic> queryTopicByType(String type) {
        return topicMapper.queryTopicByType(type);
    }

    @Override
    public List<Topic> queryAllTopic() {
        return topicMapper.queryAllTopic();
    }

    //查询热门话题
    public List<Topic> queryHotTopic(){
        return topicMapper.queryHotTopic();
    }

    @Override
    public int topicCount() {
        return topicMapper.topicCount();
    }

    @Override
    public int topicCountByDate(int days) {
        return topicMapper.topicCountByDate(days);
    }

    @Override
    public List<Topic> unaudited(String state) {
        return topicMapper.unaudited(state);
    }

    @Override
    public List<Topic> queryTopicByCreator(String creator) {
        return topicMapper.queryTopicByCreator(creator);
    }
}
