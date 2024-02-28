package com.dao;

import com.entity.DakaxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DakaxinxiVO;
import com.entity.view.DakaxinxiView;


/**
 * 打卡信息
 * 
 * @author 
 * @email 
 * @date 2021-04-17 11:46:22
 */
public interface DakaxinxiDao extends BaseMapper<DakaxinxiEntity> {
	
	List<DakaxinxiVO> selectListVO(@Param("ew") Wrapper<DakaxinxiEntity> wrapper);
	
	DakaxinxiVO selectVO(@Param("ew") Wrapper<DakaxinxiEntity> wrapper);
	
	List<DakaxinxiView> selectListView(@Param("ew") Wrapper<DakaxinxiEntity> wrapper);

	List<DakaxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DakaxinxiEntity> wrapper);
	
	DakaxinxiView selectView(@Param("ew") Wrapper<DakaxinxiEntity> wrapper);
	
}
