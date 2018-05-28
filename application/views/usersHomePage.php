<?php
$this->load->view('header'); 
$this->load->helper('url');
$base = base_url() . index_page();
$img_base = base_url();
?>

<h1 class="tableHeading">User Home Page</h1>

    <div class = "userReviewDetails">
<p class="center-text">Hi <?php
$user = $this->session->userdata('user');
$n = $this->session->userdata('noticeData');
$id = $user['UserName'];
echo " ". $id; ?></p>
<p class="center-text">
	<a href="<?php echo "$base/User/getUpdateDetails/" . $user['UserID']; ?>">Edit User Details</a>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<?php echo "$base/Notice/doInsertNotice/"?>">Add a new Review</a>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="<?php echo "$base/User/logout/"?>">Log out</a>
</p>

<?php
    
if($n==null){echo "You have no reviews to view";}else{
?>
 </div>
<div class = "userReviews">
	
	<table border="2">
		<th>Album Art</th>
        <th>Your Review <br>Summary</th>
        <th>Genre</th>
        <th>Actions</th>
<?php
		foreach ($n as $notice){
			echo "<tr>";
				echo "<td> <a href=\"$base/Notice/getDrillDownNotice/". 
					$notice['noticeId'] . "\"><img src=\"$img_base/assets/images/thumbs/". 
					$notice['largeImage']. "\" /> </a> </td>";
				echo "<td>" . $notice['shortDescription'] . "</td>";
				echo "<td>" . $notice['area'] . "</td>";
				echo "<td>	<a href=\"$base/Notice/doEditNotice/". $notice['noticeId'] . "\">Edit" ."<br>";
				echo "<a href=\"$base/Notice/deleteNotice/". $notice['noticeId'] . "\">Delete	</td>" ;  
			echo "</tr>";
		} 
?>
	</table>
    
</div>

  <?php }  ?>              

<?php
$this->load->view('footer'); 
?>