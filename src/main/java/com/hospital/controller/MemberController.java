package com.hospital.controller;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hospital.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@MapperScan(basePackages = "com.hospital.mapper")
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	
}
