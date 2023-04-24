package club.chuanghua.dao.comment;

import club.chuanghua.pojo.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentMapper {

    //添加一个留言
    int addComment(Comment comment);

    //删除一个留言
    int delCommentById(@Param("id") int id);

    int updateComment(@Param("id") int id);

    List<Comment> unaudited(String state);

    //查询用户发表的评论
    List<Comment> queryCommentByCreator(String creator);

    //查询话题的评论
    List<Comment> queryCommentById(@Param("id") int id);

    int commentCount();

    //通过日期查询评论数，days是据现在几天前
    int commentCountByDate(int days);
}
