<?php 
$this->load->helper('url'); 
//$cssbase = base_url() .  "/"; 
$cssbase = base_url();
$jsbase = base_url();
$img_base = base_url();
$base = base_url() . index_page();

$user = $this->session->userdata('user');
?>

<!DOCTYPE>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>OTR - Off The Records Reviews</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700" rel="stylesheet" type="text/css" />
<link href="<?php echo $cssbase . "assets/css/stylesOTR.css"?>" rel="stylesheet" type="text/css" media="all" />
<script type="javascript" src="<?php echo base_url() . "assets/js/jquery.validate.js"?>"></script>
<script src="<?php echo $jsbase . "assets/js/code.js"?>"></script> <!--- Link to .js file -->
</head>

<body>

	<div id="header">
		<div id="logo"> 
			<h1><img src="<?php echo $img_base . "assets/images/OTR.jpg"?>" alt="" width="385" height="150" /></h1>
		</div>
	</div>
	<nav class="menu">
		<ul class = "mainMenu">
			<li ><a class="mainMenuItem" href="<?php echo "$base/User"; ?>">Home</a></li>
			<?php if ($user['UserID'] > 0) {?>
				<li><a class="mainMenuItem" href="<?php echo "$base/User/userHomePage/". $user['UserID']; ?>">My Home Page</a></li>
                <li>  <a href="<?php echo "$base/Notice/doInsertNotice/"?>">Add a review</a> </li>
				<li><a class="mainMenuItem" href="<?php echo "$base/User/logout/". $user['UserID']; ?>">Log Out</a></li>
				
				
			<?php } else { ?>
				<li ><a class="mainMenuItem"  href="<?php echo "$base/User/dologon"; ?>">Login</a></li>
				<li ><a class="mainMenuItem"  href="<?php echo "$base/User/doRegister"; ?>">Register</a></li>
			<?php } ?>
		</ul>
	</nav> 
	<p>&nbsp;</p>