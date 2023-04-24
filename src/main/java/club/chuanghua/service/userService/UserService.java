package club.chuanghua.service.userService;

import club.chuanghua.pojo.User;

public interface UserService {
    //用户登录
    User selectSingleUser(String username);

    int addUser(User user);

    int userCount();

    int userCountByDate(int days);

    int changePwd(User user);

}
