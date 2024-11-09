package com.jsp.App.Configuration;

import java.awt.Desktop;
import java.net.URI;

import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class BrowserLuncher
{
  @EventListener(ApplicationReadyEvent.class)
  public void launch()
  {
	  System.setProperty("java.awt.headless", "false");
	  Desktop desk = Desktop.getDesktop();
	  try 
	  {
		desk.browse(new URI("http://localhost:8080"));
	} 
	  catch (Exception e) 
	  {
		
	}
	  }
}
