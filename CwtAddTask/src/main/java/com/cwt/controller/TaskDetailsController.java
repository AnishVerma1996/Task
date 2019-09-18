package com.cwt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cwt.common.CommonUtil;
import com.cwt.dto.TaskDto;
import com.cwt.entity.TaskDetails;
import com.cwt.service.TaskDetailsService;

@RestController
public class TaskDetailsController {
	
	@Autowired 
	private TaskDetailsService taskDetailsService;
	

	@PostMapping(value="/saveTask",produces="application/json")
	public ResponseEntity<String> savetask (@RequestBody TaskDto task) {
		
		TaskDetails taskDetails=new TaskDetails();
		taskDetails.setUserId(task.getUserId());
		taskDetails.setStartTime(task.getStartTime());
		taskDetails.setEndTime(task.getEndTime());
		taskDetails.setTaskName(task.getTaskName());
		CommonUtil.StartDate=task.getStartTime();
		CommonUtil.EndDate=task.getEndTime();
		taskDetailsService.save(taskDetails);
		
		String myKeyVals="{\"userId\":\""
				+ "Ulmx123"
				+ "\",\"taskName\":\""
				+ "Data"
				+ "\",\"startTime\":\""
				+ "today"
				+ "\",\"endTime\":\""
				+ "today"
				+ "\"}";
		
	//	System.out.println("Start Date="+CommonUtil.StartDate+"End Date"+CommonUtil.EndDate);
		return new ResponseEntity<String>("task added",HttpStatus.OK);
		
		
		
		
		
	}
	

}
