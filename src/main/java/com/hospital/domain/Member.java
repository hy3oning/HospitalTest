package com.hospital.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class Member {
	private int memberNo;
	private String id;
	private String password;
	private String memberName;
	private String phoneNumber;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthDate;
	private String address;
	private Date regDate;
	
}
