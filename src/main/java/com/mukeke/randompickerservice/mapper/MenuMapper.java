package com.mukeke.randompickerservice.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mukeke.randompickerservice.entity.Menu;

import java.util.List;

public interface MenuMapper extends BaseMapper<Menu> {

    List<String> selectPermsByUserId(Long userid);
}
