package com.chi.mapper;

import com.chi.pojo.User;
import com.chi.pojo.Users;

import java.util.List;

/**
 * @包名：
 * @用户名：
 * @时间：
 * @版本：
 **/
public interface UsersMapper {
    int insertUsers(Users users);
    List<Users> selectAll();
    Users selectUserByName(String name);
    int updateUsers(Users users);
    int deleteUsersByName(String name);
    List<Users> selectByName(String name);
}
