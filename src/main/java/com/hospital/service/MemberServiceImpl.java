package com.hospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hospital.domain.Member;
import com.hospital.mapper.MemberMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;

	@Override
	@Transactional
	public int create(Member member) throws Exception {
		return mapper.create(member);
	}

	@Override
	@Transactional
	public int update(Member member) throws Exception {
		return mapper.update(member);
	}

	@Override
	@Transactional
	public int delete(Member member) throws Exception {
		return mapper.delete(member);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Member> list() throws Exception {
		return mapper.list();
	}

	@Override
	@Transactional(readOnly = true)
	public Member read(Member member) throws Exception {
		return mapper.read(member);
	}

	@Override
	@Transactional(readOnly = true)
	public List<Member> search(Member member) throws Exception {
		return mapper.search(member);
	}

	@Override
	@Transactional(readOnly = true)
	public Member login(Member member) throws Exception {
		return mapper.login(member);
	}

}
