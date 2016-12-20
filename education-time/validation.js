function validate()
{
    var e = document.getElementById("dd1");
    var f = document.getElementById("dd2");
    var subject1 = e.options[e.selectedIndex].value;
    var subject2 = f.options[f.selectedIndex].value;
   if(subject1=="")
   {
      alert("Please select value"); // prompt user
      document.getElementById("ddlList").focus(); //set focus back to control
      return false;
   }
     if(subject2=="")
   {
      alert("Please select value"); // prompt user
      document.getElementById("dd2").focus(); //set focus back to control
      return false;
   }
     if(subject2==subject1)
   {
      alert("Please select a different subject"); // prompt user
      document.getElementById("dd2").focus(); //set focus back to control
      return false;
   }return true;
    console.log("Hello world.");
    
    
}