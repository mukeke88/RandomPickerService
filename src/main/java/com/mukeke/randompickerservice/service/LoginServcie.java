package com.mukeke.randompickerservice.service;

import com.mukeke.randompickerservice.entity.ResponseResult;
import com.mukeke.randompickerservice.entity.User;

public interface LoginServcie {
    ResponseResult login(User user);

    ResponseResult logout();

}
