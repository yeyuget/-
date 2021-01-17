package com.chi.controller;

import com.chi.pojo.Users;
import com.chi.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @包名：
 * @用户名：
 * @时间：
 * @版本：
 **/
@Controller
@RequestMapping("/books")
public class BooksController {
    @Autowired
    private UsersService usersService;
    @RequestMapping("/allBooks")
    public String list(Model model){
        List<Users> list= usersService.selectAll();
        model.addAttribute("list",list);
        return "/allBooks";
    }
    @RequestMapping("/selectByName")
    public String selectByName(String name,Model model){
        List<Users> list1 = usersService.selectByName(name);
        System.out.println(list1);
        model.addAttribute("list",list1);
        return "/ByNameBooks";
    }
    @RequestMapping("/insertBooks")
    public String insertBooks(){
        return "/insertBooks";
    }
    @RequestMapping("/addBooks")
    public String addBooks(Users books){
        usersService.insertBooks(books);
        return "redirect:/books/allBooks";
    }
    @RequestMapping("/deleteById/{name}")
    public String delete(@PathVariable("name") String name){
        usersService.deleteBooksByName(name);
        return "redirect:/books/allBooks";
    }
    @RequestMapping("/updateBook")
    public String updateBook(Model model, String name){
        Users books = usersService.selectUserByName(name);
        model.addAttribute("book",books);
        return "/updateBooks";
    }
    @RequestMapping("/updateBooks")
    public String update(Model model, Users book){
        usersService.updateBooks(book);
        model.addAttribute("books",book);
        return "redirect:/books/allBooks";
    }
}
