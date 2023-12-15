package com.kmaru.service;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import com.kmaru.persistence.ClassDAO;


@Service(value = "itemService")
public class ClassService {
	
	

	private static final Logger logger = LoggerFactory.getLogger(ClassService.class);
	
	@Inject
	private ClassDAO cdao;
	

	
}
