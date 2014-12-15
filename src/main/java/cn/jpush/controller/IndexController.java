package cn.jpush.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loginView() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/accounts/login");
		return mav;
	}
}
