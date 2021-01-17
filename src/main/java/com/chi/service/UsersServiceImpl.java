package com.chi.service;

import com.chi.mapper.UsersMapper;
import com.chi.pojo.User;
import com.chi.pojo.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @包名：
 * @用户名：
 * @时间：
 * @版本：
 **/
@Service
public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersMapper booksMapper;
    @Override
    public int insertBooks(Users users) {
        return booksMapper.insertUsers(users);
    }

    @Override
    public List<Users> selectAll() {
        return booksMapper.selectAll();
    }

    @Override
    public int updateBooks(Users users) {
        return booksMapper.updateUsers(users);
    }

    @Override
    public int deleteBooksByName(String name) {
        return booksMapper.deleteUsersByName(name);
    }

    @Override
    public List<Users> selectByName(String name) {
        return booksMapper.selectByName(name);
    }

    @Override
    public Users selectUserByName(String name) {
        return booksMapper.selectUserByName(name);
    }

}
