<?php
$this->load->view('header'); 
$this->load->helper('url'); 
$base = base_url() . index_page();
$img_base = base_url();
$n = $this->session->userdata('AllNoticeData');

if(!$n==null){ ?>

<div class= "userReviewDetails">
<h1> Off The Record Reviews</h1>
    <div class = "dateOfReview">JANUARY 22 2018</div>  
    <div class = "summary">The website with full reviews submitted from the viewers

    <h2>Benefits of Registering </h2>
    
    <p>Viewing: Ability to view all articles.  </p>
    <p> Adding Articles: Registered viewers can add new articles.</p>
    <p> Editing / Deleting articles: Registered viewers can edit or delete the <br>articles that <em>they</em> have submitted.</p>

    </div>
    
<h1>All Reviews</h1>
    <h2>Click on Album Icon to see full review</h2>
    
	<table border="2" align="center">
		<th width="130">Album Art <br> (click on album icon <br> to view full review)</th>
        <th width="130">Album Name</th>
        <th width="130">Artist</th>
        <th width="130">Genre</th>
        <th width="130">Reviewer</th>
        <?php foreach ($n as $notice){
			echo "<tr>";
			    echo "<td width=\"130\"> <a href=\"$base/Notice/getDrillDownNoticeAndUser/". 
					$notice['noticeId'] . "\"><img src=\"$img_base/assets/images/thumbs/". 
					$notice['largeImage']. "\" /> </a> </td>";
                echo "<td width=\"130\">" . $notice['albumName'] . "</td>";
				echo "<td width=\"130\">" . $notice['artistName'] . "</td>";
				echo "<td width=\"130\">" . $notice['area'] . "</td>";
                echo "<td width=\"130\">" . $notice['userId'] ."</td>"; 
    
     	    echo "</tr>";
		}?>
    </table>
<?php } ?>                

 </div> 
<!--<div class= "aboutUs">
 <div class ="aboutUsTitle">OTR </div>
    
    <p>OTR is a website dedicated to the provision of genuine reviews from genuine listeners. Anyone can view any of the reviews by clicking on the Album Art icon associated album. However, Registered Users have the extra privilleges of 
    <li>Adding new reviews</li>
    <li>Editing reviews they have submitted</li>
    <li>Deleting the reviews they have submitted</li>
    </p>

</div> -->
 



<?php
$this->load->view('footer'); 
?>