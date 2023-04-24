package club.chuanghua.dao.topic;

import club.chuanghua.pojo.Topic;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TopicMapper {

    //添加一个话题
    int addTopic(Topic topic);

    //删除一个话题
    int delTopicById(@Param("id") int id);

    //更新一个话题
    int updateTopic(@Param("id") int id);

    //根据id查询话题
    Topic queryTopicById(int id);

    //查询分类话题
    List<Topic> queryTopicByType(String type);

    //查询所有话题
    List<Topic> queryAllTopic();

    //查询热门话题
    List<Topic> queryHotTopic();

    //查询总话题数
    int topicCount();

    //通过日期查询评论数，days是据现在几天前
    int topicCountByDate(int days);

    //查询审核中的话题
    List<Topic>unaudited(String state);

    //通过用户查询话题
    List<Topic>queryTopicByCreator(String creator);
}
