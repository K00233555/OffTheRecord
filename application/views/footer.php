<?php 
$this->load->helper('url'); 
//$cssbase = base_url() .  "/"; 
$cssbase = base_url();
$img_base = base_url();
$base = base_url() . index_page();

$user = $this->session->userdata('user');
?>
<div id="footer">
    Copyright (c) 2018 OTR 
  <div id="logo"> 
			<h1><img src="<?php echo $img_base . "assets/images/OTR_Logo2.jpg"?>" alt="" width="385" height="150" /></h1>
    </div>  
   
</div>

</html>