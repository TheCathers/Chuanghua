package club.chuanghua.service.commentService;

import club.chuanghua.dao.comment.CommentMapper;
import club.chuanghua.pojo.Comment;

import java.util.List;

public class CommentServiceImpl implements CommentService {

    private CommentMapper commentMapper;
    public CommentServiceImpl(CommentMapper commentMapper) {
        this.commentMapper = commentMapper;
    }
    public void setCommentMapper(CommentMapper commentMapper) {
        this.commentMapper = commentMapper;
    }

    @Override
    public int addComment(Comment comment) {
        return commentMapper.addComment(comment);
    }

    @Override
    public int delCommentById(int id) {
        return commentMapper.delCommentById(id);
    }

    @Override
    public int updateComment(int id) {
        return commentMapper.updateComment(id);
    }

    @Override
    public List<Comment> unaudited(String state) {
        return commentMapper.unaudited(state);
    }

    @Override
    public List<Comment> queryCommentByCreator(String creator) {
        return commentMapper.queryCommentByCreator(creator);
    }

    @Override
    public List<Comment> queryCommentById(int id) {
        return commentMapper.queryCommentById(id);
    }

    @Override
    public int commentCount() {
        return commentMapper.commentCount();
    }

    @Override
    public int commentCountByDate(int days) {
        return commentMapper.commentCountByDate(days);
    }
}
