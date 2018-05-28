
var firstName2 = " ";
var secondName2 = " ";
var moneyDonated = 0;
var dateOfPurchase = "";
var email2 = " ";
var creditCard2 = "";
var treeSelected2 = " ";
// Booleans
var isValidCreditCard = true;
var isValidFirstName = true;
var isValidSecondName = true;
var isValidEmail = true;
var isValidDonation = true;
var isValidDate = true;

// Date Calculation to get today's date
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();

if(dd<10) {
    dd = '0'+dd
} 
if(mm<10) {
    mm = '0'+mm
} 
today = yyyy+ "-"+ mm +"-"+  dd; // Convert to be used for date validation


function firstNameValidator(firstName){
    isValidFirstName = true;
    firstName2 = firstName;
     if (firstName2.length < 2)
        {
        alert("Name Error === First Name Is Below Min. Length \n Please Re-enter");
         isValidFirstName = false;   
            
        }
 }

function secondNameValidatorChanger()
{     isValidSecondName = true;
    secondName2 = document.getElementById("secondName").value;
    if (secondName2.length < 2)
        {
        alert("Name Error === Second Name Is Below Min. Length \n Please Re-enter");
         isValidSecondName = false;   
            
        }
     
  } 


function emailValidator(){ /* Test for tomorrow */ 
    isValidEmail = true;
     email2 = document.getElementById("email").value;
   
    var count = 0;
    var emailArr = email2.split('@');
    
 
    for (count = 0; count< emailArr.length; count++)
        {
            if(emailArr[count].length < 2){ /* If either part is only one char long */ 
                isValidEmail = false; 
                break;
            }
            
        }
    var lastString = emailArr[emailArr.length - 1];
    var posnOfDot = lastString.indexOf(".")+1;
    var charsAfterDot = lastString.length - posnOfDot;
    if (charsAfterDot < 2)
        {
          
        isValidEmail = false;    
        }
    
    if(!lastString.includes("."))
        {
        
        isValidEmail = false;     
        }

    
    if (!isValidEmail){
        alert("Email Error === Invalid Email Address \ Please Re-enter");
    } 
}







function moneyValidatorAmount(){
    isValidDonation = true;
    moneyDonated = document.getElementById("amount").value;
    if (moneyDonated <= 0)
        {
            alert("Donation Error === Negative Value Donated \ Please Re-enter");
            isValidDonation = false;
            
        }
  }

function creditCardCheck(num)

{ 
    
    isValidCreditCard = true;
 
 creditCard2 = num;
    if (creditCard2.length != 19)
        {
         isValidCreditCard = false;    
        }
 // charLoop is a Label 
charLoop: for(var i = 0; i < creditCard2.length; i++)
            { 
         var charNow = creditCard2.charAt(i);
        
        if( (i == 4) || (i == 9) || (i == 14))
            {
            
         if( charNow != '-')
             {
                 
                 isValidCreditCard = false;
                 break charLoop;
             } 
               
           } else {
               
               switch(charNow){
                   case '0':
                   case '1':
                   case '2':
                   case '3':
                   case '4':
                   case '5':
                   case '6':
                   case '7':
                   case '8':
                   case '9':
                       break;
                    default: 
                       // This catches all non-numerical entries
                       isValidCreditCard = false;
                       break charLoop;
                    }
               
           }
     }/* End of for */
    if (isValidCreditCard == false)
        {
            alert("Credit Card Error === Invalid Format \n Please Reenter");
            submitForm();
        }
} /* End of function */

function dateValidator(){
    isValidDate = true;
     dateOfPurchase = document.getElementById("datePurchased").value;
    if (dateOfPurchase< today)
        {
            alert("Date Purchased Error === Today's Date Min. \Please Reenter");
         isValidDate = false;   
        }
  
}




function treeSelector(treeSelected){
    treeSelected2 = treeSelected;
    alert(treeSelected2);
}
 
function sameNameChecked()
{ 
    
   document.getElementById("firstName2").value = document.getElementById("firstName").value ;
   document.getElementById("secondName2").value = document.getElementById("secondName").value ; 
}



function submitFormEnd(treeType2)
{   
     var validSubmission = true; 
    var errorMessage = "\t Ooops There seems to be a problem with \n";
    var gifts = " ";
    var picImg = " ";
if (!isValidSecondName)
    {
     errorMessage += "\tYour Second Name is below the minimum length \n";   
    validSubmission = false;
    }
if (!isValidEmail)
    {
     errorMessage += "\tYour email address was invalid" +email2+ " \n";   
    validSubmission = false;
    }
if (!isValidDonation)
    {
      errorMessage += "Donation Error === Your donation amount " +moneyDonated+ " is negative === \n";     
    validSubmission = false;        
    }
if (!isValidDate)
    {
    errorMessage += "\tYou entered an incorrect date value " +dateOfPurchase+ " \n";       
    validSubmission = false;        
    }
 if(!isValidCreditCard)
     {
      errorMessage += "\tYour Credit Card # is invalid " +creditCard2+ " \n";      
    validSubmission = false;        
    }
 if(!validSubmission){
     alert(errorMessage);
   } else {
       
       alert("Your gift of " +moneyDonated+ "has gone through. Thanks" );
      /* document.getElementById("amountPaid").innerHTML = moneyDonated;
       document.getElementById("senderField").innerHTML = document.getElementById("firstName").value ;
       document.getElementById("receiverField").innerHTML = document.getElementById("firstName2").value ;
       document.getElementById("messageField").innerHTML = document.getElementById("personalMessage").value ; */ 

       if (moneyDonated >= 2)
           {
            gifts = "You will receive The Frank and Walters download" ;  
               
           }
       
       if(moneyDonated >= 25 )
           {
               
            gifts += "\n and be entered to the Mystery Draw";   
               
           }
       
           else  if(moneyDonated >= 20 )
           {
               
            gifts += "\n and be entered to the Derval O' Rourke  Draw";
               
           }
           else  if(moneyDonated >= 15 )
           {
               
            gifts += "\n and be entered to the John Caulfield Draw";
               
           }
            else if(moneyDonated >= 5 )
           {
               
            gifts += "\n and be entered to the Terence Draw";  
               
           }
       document.getElementById("giftsField").innerHTML = gifts; 
   }
 
 }


function resetFormAll()
{
    
    document.getElementById("allForm").reset();
   
}



 



 
    
    
