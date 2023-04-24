package club.chuanghua.service.userService;

import club.chuanghua.dao.user.UserMapper;
import club.chuanghua.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public User selectSingleUser(String username) {
//        System.out.println(username);
        return userMapper.selectSingleUser(username);
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int userCount() {
//        System.out.println(userMapper.userCount());
        return userMapper.userCount();
    }

    @Override
    public int userCountByDate(int days) {
        return userMapper.userCountByDate(days);
    }

    @Override
    public int changePwd(User user) {
        return userMapper.changePwd(user);
    }
}
