package club.chuanghua.dao.user;

import club.chuanghua.pojo.User;

public interface UserMapper {

    //通过用户名查询单个用户，可以实现登录
    User selectSingleUser(String username);

    //用户注册
    int addUser(User user);

    int userCount();

    int userCountByDate(int days);

    int changePwd(User user);
}
