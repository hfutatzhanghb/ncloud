package cn.cloud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class WebsiteController {
	
	 @RequestMapping(value="/",method = RequestMethod.GET)
	    public String index_1(){
		 return "index";
	    }
    
    @RequestMapping(value="/index",method = RequestMethod.GET)
    public String index_2(){
        return "index";
    }
    
    @RequestMapping(value="/aboutus",method = RequestMethod.GET)
    public String aboutus(){
        return "aboutus";
    }
    
    @RequestMapping(value="/community",method = RequestMethod.GET)
    public String community(){
        return "community";
    }
    
    @RequestMapping(value="/data",method = RequestMethod.GET)
    public String data(){
        return "data";
    }
    
    @RequestMapping(value="/software",method = RequestMethod.GET)
    public String software(){
        return "software";
    }
    
    @RequestMapping(value="/simulation",method = RequestMethod.GET)
    public String simulation(){
        return "simulation";
    }
    
    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String login(){
        return "login";
    }
}
