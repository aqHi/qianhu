package com.qh.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qh.model.Answer;
import com.qh.service.AnswerService;
import com.qh.service.UserService;
import com.qh.util.Response;

@Controller
@RequestMapping("/")
public class AnswerController {

	@Autowired
	private AnswerService answerService;

	@Autowired
	private UserService userService;

	@RequestMapping("/answer")
	@ResponseBody
	public Response answer(Answer answer, HttpServletRequest request) {
		System.out.println(answer);
		Integer userId = userService.getUserIdFromRedis(request);
		Integer answerId = answerService.answer(answer, userId);

		return new Response(0, "", answerId);
	}

	@RequestMapping("/likeAnswer")
	@ResponseBody
	public Response likeAnswer(Integer answerId, HttpServletRequest request) {
		Integer userId = userService.getUserIdFromRedis(request);
		answerService.likeAnswer(userId, answerId);
		return new Response(0, "");
	}

	@RequestMapping("/listTodayHotAnswer")
	@ResponseBody
	public Response listTodayHotAnswer() {
		Map<String, Object> map = answerService.listTodayHotAnswer();
		return new Response(0, "", map);
	}

	@RequestMapping("/listMonthHotAnswer")
	@ResponseBody
	public Response listMonthHotAnswer() {
		Map<String, Object> map = answerService.listMonthHotAnswer();
		return new Response(0, "", map);
	}
}
