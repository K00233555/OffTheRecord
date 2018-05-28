<?php
$this->load->helper('url');
$base = base_url() . index_page();
$this->load->view('header'); 
?>
<div class = "review">
<fieldset>
    <legend> Login Screen </legend>
<form id="form1" name="form1" method="post" action="<?php echo "$base/User/getUser"; ?>">
  <p>
    <label for="username">User Name</label> <br>
    <input type="text" name="UserName" id="username" />
  </p>
  <p>
    <label for="password">Password</label><br>
    <input type="text" name="password" id="password" />
  </p>
  <p>
    <input class = "buttonStyle" type="submit" name="button" id="button" value="Submit" />
  </p>
</form>
</fieldset>
</div>
<?php
$this->load->view('footer'); 
?>