<?php
   class member extends _Main
 {
 	
 	function login()
 	{
 	  $this->setViewName("login");
	  $this->addObject("hideTop",true);
	  $this->addObject("hideFooter",true);
 	}
 }


?>