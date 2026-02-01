package com.hospital.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Member {
	private int memberNo;
	private String memberName;
	private String phoneNumber;
	private Date birthDate;
	private String address;
	private Date regDate;
	
}
