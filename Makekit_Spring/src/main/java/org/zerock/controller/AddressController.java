package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AddressController {
   
   @GetMapping("/about") 
   public String address() {
      System.out.println("about");
      
      return "about";
   }
   

   
   @GetMapping("/shop") 
   public String shop() {
      System.out.println("shop");
      
      return "shop";
   }

      
      @GetMapping("/CartView") 
      public String CartView() {
         System.out.println("CartView");
         
         return "CartView";
   }
      
      @GetMapping("/CartProcess") 
      public String CartProcess() {
         System.out.println("CartProcess");
         
         return "CartProcess";
   }
      
      @GetMapping("/CartClear") 
      public String CartClear() {
         System.out.println("CartClear");
         
         return "CartClear";
   }
      
      @GetMapping("/star") 
      public String star() {
    	  System.out.println("star");
    	  
    	  return "star";
      }
      
}