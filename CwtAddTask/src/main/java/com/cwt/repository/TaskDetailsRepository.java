package com.cwt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cwt.entity.TaskDetails;
@Repository

public interface TaskDetailsRepository  extends JpaRepository<TaskDetails, Integer>{

}
