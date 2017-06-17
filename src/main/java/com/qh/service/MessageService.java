package com.qh.service;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qh.mapper.AnswerMapper;
import com.qh.mapper.MessageMapper;
import com.qh.mapper.QuestionMapper;
import com.qh.mapper.UserMapper;
import com.qh.model.Message;

@Service
public class MessageService {

	@Autowired
	private AnswerMapper answerMapper;

	@Autowired
	private QuestionMapper questionMapper;

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private MessageMapper messageMapper;

	public Map<String, List<Message>> listMessage(Integer userId) {
		List<Message> messageList = messageMapper.listMessageByUserId(userId);
		Map<String, List<Message>> map = new HashMap<>();
		for (Message message : messageList) {
			String time = message.getMessageDate();
			if (map.get(time) == null) {
				map.put(time, new LinkedList<Message>());
				map.get(time).add(message);
			} else {
				map.get(time).add(message);
			}
		}
		return map;
	}

}
