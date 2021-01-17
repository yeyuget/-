package com.chi.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @包名：
 * @用户名：
 * @时间：
 * @版本：
 **/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int uid;
    private String uname;
    private String upassword;
}
