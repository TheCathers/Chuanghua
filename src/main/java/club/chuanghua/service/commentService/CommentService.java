package club.chuanghua.service.commentService;

import club.chuanghua.pojo.Comment;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentService {

    //添加一个留言
    int addComment(Comment comment);

    //删除一个留言
    int delCommentById(@Param("id") int id);

    int updateComment(@Param("id") int id);

    List<Comment> unaudited(String state);

    List<Comment> queryCommentByCreator(String creator);

    //通过话题id查询留言
    List<Comment> queryCommentById(int id);

    int commentCount();

    //通过日期查询评论数，days是据现在几天前
    int commentCountByDate(int days);
}
