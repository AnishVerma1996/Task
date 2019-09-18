package com.cwt.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cwt.common.CommonUtil;
import com.cwt.entity.TaskDetails;
import com.cwt.repository.TaskDetailsRepository;
import com.cwt.service.TaskDetailsService;

@Service
public class TaskDetailsServiceImpl implements TaskDetailsService {
   @Autowired
   private TaskDetailsRepository taskDetailsRepository;
	@Override
	public TaskDetails save(TaskDetails taskDetails) {
		System.out.println("Start Date="+CommonUtil.StartDate+"End Date"+CommonUtil.EndDate);
		return taskDetailsRepository.save(taskDetails);
	}

}
