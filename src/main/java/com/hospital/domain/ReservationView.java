package com.hospital.domain;

import lombok.Data;

@Data
public class ReservationView {
	private int reservationNo;
	private String reserveDate;
	private int reserveTime;
	private int memberNo;
	private String memberName;
	private String doctorName;
}
