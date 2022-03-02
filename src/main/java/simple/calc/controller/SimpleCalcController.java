package simple.calc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SimpleCalcController {

	@GetMapping("/home")
	public String home() {
		return "home";
	}
	
	@GetMapping("/menu")
	public String menu() {
		return "menu";
	}
	
	@GetMapping("/about")
	public String about() {
		return "about";
	}

	@GetMapping("/filesize")
	public String filesize() {
		return "fileSize";
	}
	
	@PostMapping("/calculate")
	public String calculate(@RequestParam String amplifier, @RequestParam String sample_rate, @RequestParam String channels, @RequestParam String time, Model model,HttpSession session) {
		double answer = 0;
		double answer_rounded = 0;
		String error = null;
		
		int adc = 24;
		
		if (amplifier.equals("BrainAmp")) {
			adc = 16;
		}
		System.out.println(amplifier);
		System.out.println(adc);
		
		session.setAttribute("amplifier", amplifier);
		session.setAttribute("sample_rate", sample_rate);
		session.setAttribute("channels", channels);
		session.setAttribute("time", time );
		
		try {
			answer =(float) adc *Integer.parseInt(sample_rate) * Integer.parseInt(channels) * Integer.parseInt(time) * 60 /8 /1024 /1024;
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			answer_rounded = 0;
			error = "Try Again";
			model.addAttribute("error", error);
			model.addAttribute("answer", answer_rounded);
			return "fileSize";
		}
		
		answer_rounded = Math.round(answer*100.0)/100.0;
		model.addAttribute("answer", answer_rounded);
		return "fileSize";
	}
	
}
