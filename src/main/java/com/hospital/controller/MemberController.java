package com.hospital.controller;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hospital.domain.Member;
import com.hospital.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@MapperScan(basePackages = "com.hospital.mapper")
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;

	/**
	 * 회원가입폼
	 * @return member/register
	 */
	@GetMapping("/register")
	public String memberRegister() {
		return "member/register";
	}

	/**
	 * 로그인
	 * @return member/login
	 */
	@GetMapping("/login")
	public String loginForm() {
		return "member/login";
	}

	/**
	 * 로그인성공후
	 * @param member
	 * @param model "error message"
	 * @return member/login | member/loginSuccess
	 */
	@PostMapping("/login")
	public String memberLogin(Member member, Model model) {
		try {
			Member loginMember = memberService.login(member);
			if (loginMember == null) {
				model.addAttribute("error", "아이디 또는 비밀번호가 틀렸습니다.");
				return "member/login";
			}
			model.addAttribute("member", loginMember);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/loginSuccess";

	}

	/**
	 * 멤버 추가
	 * @param member
	 * @param model 성공,실패 message
	 * @return member/success | member/failed
	 */
	@PostMapping("/insert")
	public String memberInsert(Member member, Model model) {
		log.info("insert member = " + member.toString());

		try {
			int count = memberService.create(member);
			if (count > 0) {
				model.addAttribute("message", "%s님 가입 축하드립니다.".formatted(member.getMemberName()));
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/failed";
	}

}
