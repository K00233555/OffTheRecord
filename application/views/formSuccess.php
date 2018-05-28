<?php
$this->load->view('header'); 
$this->load->helper('url'); 
$base = base_url() . index_page();
$img_base = base_url();
?>
<html>
 
   <head> 
      <title>My Form</title>
   </head> 
	
   <body>  
      <h3>Your form was successfully submitted!</h3>  
      <p><?php echo anchor('form', 'Try it again!'); ?></p>  
   </body>
	
</html>

<?php
$this->load->view('footer'); 
?>