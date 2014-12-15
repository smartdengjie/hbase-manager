package cn.jpush.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import cn.jpush.domain.HBaseTableDomain;
import cn.jpush.domain.HTableName;
import cn.jpush.service.ScanHTabelService;

@Controller
@RequestMapping("/apps")
public class MainController {

	@Autowired
	private ScanHTabelService scanService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginView() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/accounts/login");
		return mav;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logoutView(HttpSession session) {
		session.removeAttribute("user");
		return new ModelAndView("redirect:/apps/login");
	}

	@RequestMapping(value = "/scan", method = RequestMethod.GET)
	public ModelAndView scanView(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("user") != null) {
			mav.setViewName("/htable/scan");
		} else {
			mav.setViewName("redirect:/apps/login");
			return mav;
		}

		// 加载表名
		Map<String, Object> map = new HashMap<String, Object>();
		List<HTableName> set = new ArrayList<HTableName>();
		for (Object tableName : scanService.list()) {
			set.add((HTableName) tableName);
		}
		map.put("set", set);
		mav.addObject("htable", map);
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "/scan/ajax/data", method = RequestMethod.GET)
	public Object scanAjaxView(@RequestParam String tblName) {
		System.out.println(tblName);
		Map<String, Object> map = new HashMap<String, Object>();
		List<HBaseTableDomain> set = new ArrayList<HBaseTableDomain>();
		for (Object tableName : scanService.get(tblName)) {
			set.add((HBaseTableDomain) tableName);
		}
		map.put("htable", set);
		return new Gson().toJson(map);
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView indexView(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("user") != null) {
			mav.setViewName("/index/index");
		} else {
			mav.setViewName("redirect:/apps/login");
		}
		return mav;
	}

	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public ModelAndView checked(HttpServletRequest request, HttpSession session) {
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		if ("admin".equals(userName) && "admin".equals(password)) {
			session.setAttribute("user", "admin");
			return new ModelAndView("redirect:/apps/index");
		} else {
			return new ModelAndView("/accounts/login");
		}
	}

	@RequestMapping(value = "/today", method = RequestMethod.GET)
	public ModelAndView todayView(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("user") != null) {
			mav.setViewName("/htable/today");
		} else {
			mav.setViewName("redirect:/apps/login");
			return mav;
		}

		// // 加载表名
		// Map<String, Object> map = new HashMap<String, Object>();
		// List<HTableName> set = new ArrayList<HTableName>();
		// for (Object tableName : scanService.list()) {
		// set.add((HTableName) tableName);
		// }
		// map.put("set", set);
		// mav.addObject("htable", map);
		return mav;
	}

}
