package com.text;


import java.util.List;






import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.gzcq.entity.DevUser;
import com.gzcq.entity.Devdata;
import com.gzcq.service.DevUserService;

public class Test {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		DevUserService service =ac.getBean(DevUserService.class);
		List<DevUser> list =service.finat();
        for(DevUser jdk: list)
        {
            System.out.println(jdk.getDevPassword() +jdk.getDevName());
            if(jdk.getList()!=null && jdk.getList().size()>0)
            {
            	List<Devdata> or =jdk.getList();
            	for(Devdata jre : or)
                {
                     System.out.println(jre.getData());
                }
            }   
        }
	}
}
