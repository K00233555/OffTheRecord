<?php
$this->load->view('header'); 
$this->load->helper('url');
$base = base_url() . index_page();
?>

<h1 class="center-text">Review Submission</h1>
<div class = "userReviews">
<form id="form1" name="form1" method="post" enctype="multipart/form-data"  action="<?php echo "$base/Notice/insertNotice"; ?>">
  
    <label class = "labelTitle" for="albumName">Album Name</label><br>
    <p><input type="text" name="albumName" id="albumName" />
  </p> 
     
    <label class = "labelTitle" for="artistName">Artist</label><br>
 <p>   <input type="text" name="artistName" id="artistName" />
  </p>  


    <label class = "labelTitle" for="shortDescription">Album Summary</label><br>
   <p> <input type="text" name="shortDescription" id="shortDescription" />
  </p>
  
    <label class = "labelTitle" for="longDescription">Long Description</label><br>
    <p><textarea name="longDescription" id="Full Review" cols="45" rows="25"></textarea></p>
  
  
    <label for="userfile">Album Art</label><br>
	<p><input name="userfile" type="file" id="userfile" size="45" /></p>
 
 
    <label class = "labelTitle" for="area">Genre</label><br>
    <p><input type="text" name="area" id="area" /></p>
  
 
    <label class = "labelTitle" for="dateExp">DateExp</label><br>
    <p> <input type="text" name="dateExp" id="dateExp" /></p>
  
  <p>
    <input type="submit" name="button" id="button" value="Submit" /></p>
 
</form>
</div>
<?php
$this->load->view('footer'); 
?>