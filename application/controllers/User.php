<?php 

class User extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('User_Model');
		$this->load->library('session');
		$this->load->model('Notice_Model');
		$this->load->helper('URL');
	}

	public function index() {
		//capture an array of all notices 
		$data["AllNotices"] = $this->Notice_Model->getAllNotices();	
		$noticeData = array('AllNoticeData'  => $data["AllNotices"]);
		$this->session->set_userdata($noticeData);	
		$this->load->view("homePage");
	}
	
	public function doRegister(){
		$this->load->view("insertUser");
	}

	public function doLogon(){
		$this->load->view("logonUser");
	}
	
	public function logout(){
		$this->session->sess_destroy();
		redirect('User/index');
	}
	
	public function getUser() {
		//get customers name and password from form
		$UserName = $_POST['UserName'];
		$password = $_POST['password'];
		//pass $UserName, $password to model and get back an array of user details
		$data['User'] = $this->User_Model->getUser($UserName,$password);
		//if a user if found, display their details
		//otherwise display an error plage with an appropriate error message
		if ($data['User'] != null) {
			//put user id into session - need when adding notice
			$userData = array('user'  => $data['User']);
			$this->session->set_userdata($userData);
			$user= $data['User'];
			//capture an array of all notices for that user
			$data["AllNotices"] = $this->Notice_Model->getNoticesByUserID($user['UserID']);	
			$noticeData = array('noticeData'  => $data["AllNotices"]);
			$this->session->set_userdata($noticeData);	
          	$this->load->view("usersHomePage");
		}
		else {
			$data['msg'] = "Not found";
			$this->load->view('msgpage', $data);
		}
	}
	
	public function RegisterUser(){
		$UserName = $_POST['UserName'];
		$password = $_POST['Password'];
        $isValid = TRUE; 
        $invalidMessage = " ";
		$user = array(
			"UserName"=> $_POST["UserName"],
			"Password"=>$_POST["Password"],
			"FirstName"=>$_POST["FirstName"],
			"SurName"=>$_POST["Surname"],
			"Mobile"=>$_POST["Mobile"],
			"AddressLine1"=>$_POST["AddressLine1"],
			"AddressLine2"=>$_POST["AddressLine2"],
			"AddressLine3"=>$_POST["AddressLine3"],
			"Email"=>$_POST["email"]
		);
        
        /* Validation Section */
        if (strlen($user['UserName']) < 3)
        {
            //echo $user['Password'];
           $isValid = FALSE;
           $invalidMessage = "UserName CANNOT be blank or less than 3 characters. Please re-enter details ... <br>";
        } 
        
       if (strlen($user['Password']) < 3)
        {
            //echo $user['Password'];
           $isValid = FALSE;
           $invalidMessage .=  $user['Password'];
           $invalidMessage .= "Password CANNOT be blank or less than 3 characters. . Please re-enter details ...  <br>";
        }
        
               if (strlen($user['FirstName']) < 3)
        {
            //echo $user['Password'];
           $isValid = FALSE;
         $invalidMessage .= $user['FirstName'];
           $invalidMessage .= ": Firstname CANNOT be blank or less than 3 characters. Please re-enter details ...  <br>";
        } 
                if (strlen($user['Mobile']) < 3)
        {
            //echo $user['Password'];
           $isValid = FALSE;
            $invalidMessage .=  $user['Mobile'];
           $invalidMessage .= ": Mobile # CANNOT be blank or less than 3 characters. Please re-enter details ...  <br>";
        } 
        
        if (!filter_var($user['Email'], FILTER_VALIDATE_EMAIL)) {
            $isValid = FALSE;
         $invalidMessage .= $user['Email'];
           $invalidMessage .= ": Invalid email format"; 
}
        if($isValid == FALSE)
        { $isValid = TRUE;
         
        echo "<script type='text/javascript'>alert('Invalid Data Format Entered See report in the top left corner of Error trace and re-enter data')</script>";
     echo"<p> ============= </p>" ;
         echo"<p> ERROR REPORT </p>";  
         echo"<p> ===========</p>";
    echo "<p>" .$invalidMessage. "</p>";
        echo"<p> ============= </p>" ;
         echo"<p> ERROR REPORT </p>"; 
          echo"<p> ============= </p>" ;
            $this->load->view('insertUser'); 
        } 
      
       /* formValidator($user); */ 
		$flag = $this->User_Model->insertUser($user);
          
		if($flag){
		
			//pass $UserName, $password to model and get back an array of user details
			$data['User'] = $this->User_Model->getUser($UserName,$password);
			//if a user if found, display their details
			//otherwise display an error plage with an appropriate error message
			if ($data['User'] != null) {
				//put user id into session - need when adding notice
				$userData = array('user'  => $data['User']);
				$this->session->set_userdata($userData);
				$user= $data['User'];
				//capture an array of all notices for that user
				$data["AllNotices"] = $this->Notice_Model->getNoticesByUserID($user['UserID']);	
				$noticeData = array('noticeData'  => $data["AllNotices"]);
				$this->session->set_userdata($noticeData);	
				$this->load->view("usersHomePage");
			}
			
		}else{
			$this->handleflag($flag);
		}
	}
    
    public function formValidator($userDetails){
      
        
         if (strlen($user[1]) < 3)
        {
            
            echo "<script type='text/javascript'>alert('')</script>";
           
        } 
        
     /*   if (strlen($user['FirstName']) < 3)
        {
            
            echo "<script type='text/javascript'>alert('failed!')</script>";
           
        } */ 
        
        
        
    }
	
	public function getUpdateDetails ($userid) {
       	$data['User'] = $this->User_Model->getUserByID($userid);
        if ( $data['User'] != null)
            $this->load->view('updateUserDetails', $data);
        else {
			$data['msg'] = "Error on user load";
		 	$this->load->view('msgpage', $data);
		 }
     }

	public function handleflag($flag){
		if($flag){
			$data["msg"] = "update saved in database";
		}else{
			$data["msg"] = "Error in database";
		}
		$this->load->view("msgpage",$data);
	}
	
	public function saveUserDetails($userID) {
		//prepare an array of user info submitted via the POST 
        $user = array(
			"UserName"=> $_POST["UserName"],
			"Password"=>$_POST["Password"],
			"FirstName"=>$_POST["FirstName"],
			"SurName"=>$_POST["Surname"],
			"Mobile"=>$_POST["Mobile"],
			"AddressLine1"=>$_POST["AddressLine1"],
			"AddressLine2"=>$_POST["AddressLine2"],
			"AddressLine3"=>$_POST["AddressLine3"],
			"Email"=>$_POST["email"],
			"UserID"=>$userID
		);
   		//call the function in the model to do the update and get back a boolean flag	
	    //$flag holds true/false value depending on whether the update was successful or not
        $flag = $this->User_Model->updateUser($user);
		//pass $flag to function to determine whether success/failure page should be displayed
        if($flag){
			$data['User'] = $user;
			$this->load->view("usersHomePage",$data);
		} else {
			$data['msg'] = "error on update to user details";
			$this->load->view('msgpage', $data);
		}
	}
	
	public function userHomePage($userID) {
		//capture an array of all notices for that user
		$data["AllNotices"] = $this->Notice_Model->getNoticesByUserID($userID);	
		$noticeData = array('noticeData'  => $data["AllNotices"]);
		$this->session->set_userdata($noticeData);	
		$this->load->view("usersHomePage");
	}
}