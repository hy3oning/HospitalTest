package com.hospital.mapper;

import java.util.List;

import com.hospital.domain.Member;

public interface MemberMapper {
	public int create(Member member) throws Exception;
	
	public int update(Member member) throws Exception;
	
	public int delete(Member member) throws Exception;
	
	public List<Member> list() throws Exception;
	
	public Member read(Member member) throws Exception;
	 
	public List<Member> search(Member member) throws Exception;
	
	Member login(Member member) throws Exception;
}
