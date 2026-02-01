package com.hospital.domain;

import java.util.Date;

import lombok.Data;

@Data
public class Reservation {
	private int reservationNo;
	private int memberNo;
	private int doctorNo;
	private Date reserveDate;
	private int reserveTime;
	private String status;
	
}
