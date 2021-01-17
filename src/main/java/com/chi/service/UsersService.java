package com.chi.service;

import com.chi.pojo.User;
import com.chi.pojo.Users;

import java.util.List;

/**
 * @包名：
 * @用户名：
 * @时间：
 * @版本：
 **/
public interface UsersService {
    int insertBooks(Users users);
    List<Users> selectAll();
    int updateBooks(Users users);
    int deleteBooksByName(String name);
    List<Users> selectByName(String name);
    Users selectUserByName(String name);
}
