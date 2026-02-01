package com.hospital.controller;

import java.util.List;

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
	 * 
	 * @return member/register
	 */
	@GetMapping("/register")
	public String memberRegister() {
		return "member/register";
	}

	/**
	 * 로그인
	 * 
	 * @return member/login
	 */
	@GetMapping("/login")
	public String loginForm() {
		return "member/login";
	}

	/**
	 * 로그인성공후
	 * 
	 * @param member
	 * @param model  "error message"
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
	 * 회원 추가
	 * 
	 * @param member
	 * @param model  성공,실패 message
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

	/**
	 * 회원 목록
	 * 
	 * @param model
	 * @return member/memberList
	 */
	@GetMapping("/memberList")
	public String memberList(Model model) {
		log.info("memberList");
		try {
			List<Member> memberList = memberService.list();
			model.addAttribute("memberList", memberList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/memberList";
	}

	/**
	 * 회원 상세 정보
	 * 
	 * @param m
	 * @param model "message"
	 * @return member/detail
	 */
	@GetMapping("/detail")
	public String memberDetail(Member m, Model model) {
		log.info("Detail =" + m.getMemberNo());
		try {
			Member member = memberService.read(m);
			if (member == null) {
				model.addAttribute("message2", "회원 정보가 없습니다.");
				return "member/failed";
			}
			model.addAttribute("member", member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/detail";
	}

	/**
	 * 회원 업데이트폼
	 * @param m
	 * @param model "message"
	 * @return member/updateForm
	 */
	@GetMapping("/updateForm")
	public String memberUpdateForm(Member m, Model model) {
		log.info("memberUpdate" + m.toString());
		try {
			Member member = memberService.read(m);
			if (member == null) {
				model.addAttribute("message", "회원님의 정보가 없습니다.");
				return "member/failed";
			}
			model.addAttribute("member", member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/updateForm";
	}

	/**
	 * 회원 업데이트 저장
	 * @param m
	 * @param model "message"
	 * @return member/success | member/failed
	 */
	@PostMapping("/update")
	public String memberUpdate(Member m, Model model) {
		log.info("memberUpdate member = " + m.toString());

		try {
			int count = memberService.update(m);
			if (count > 0) {
				model.addAttribute("message", "수정되었습니다.");
				return "member/success2";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/failed";
	}

	/**
	 * 회원 삭제
	 * @param member
	 * @param model "message"
	 * @return 성공 실패 화면
	 */
	@PostMapping("/delete")
	public String deleteMember(Member member, Model model) {
		log.info("Delete member =" + member.toString());
		try {
			int count = memberService.delete(member);
			if (count > 0) {
				model.addAttribute("message", "회원탈퇴 되었습니다.");
				return "member/success2";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/failed";
	}

	/**
	 * 회원 검색
	 * @param member
	 * @param model memberList
	 * @return member/memberList
	 */
	@GetMapping("/search")
	public String memberSearch(Member member, Model model) {
		log.info("memberSearch member =" + member.toString());
		try {
			List<Member> memberList = memberService.search(member);
			model.addAttribute("memberList", memberList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/memberList";
	}

}
