package club.chuanghua.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.text.SimpleDateFormat;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int id;
    private String username;
    private String password;
    private String userRole = "普通用户";
    private String email;
    private int creatBy = id;
    private Date creationDate = new Date();
    private int modifyBy;
    private Date modifyDate;

    public String getCreationDate() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        return sdf.format(creationDate);
    }
}
