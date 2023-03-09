$("#editnow").hide();
$("#updateresume").hide();
function get_forms(){

  var form_id = $("#resume_id").val();
  var base_url = $("#base_url").val();

  $("#resume_section").show();
  //  http://sparesengineer.com/perfectjob/customer_assets/resumepdf/demo.pdf
     var imgurl = base_url+'uploads/resumes/';
   
  $.ajax({
     url:base_url+'/get_forms',
     method: 'post',
     data: {form_id:form_id},
     dataType: 'json',
     success: function(response){

      var pdfurl = imgurl+response.data.resume_id+'.pdf';
       console.log(pdfurl);
       $("#resumepdf").attr("src", pdfurl);



      $('.form-control').attr('readonly', false);
       console.log(response.data);
       $("#fname").val(response.data.fname);
       $("#mname").val(response.data.mname);
       $("#lname").val(response.data.lname);
       $("#dob").val(response.data.dob);
       $("#gender").val(response.data.gender);
       $("#notionality").val(response.data.notionality);
       $("#mari_status").val(response.data.mari_status);
       $("#passport").val(response.data.passport);
       $("#hobbies").val(response.data.hobbies);
       $("#address").val(response.data.address);
       $("#land_mark").val(response.data.land_mark);
       $("#state").val(response.data.state);
       $("#city").val(response.data.city);
       $("#pincode").val(response.data.pincode);
       $("#mobile").val(response.data.mobile);
       $("#email").val(response.data.email);
       $("#ssc_result").val(response.data.ssc_result);
       $("#ssc_board_uni").val(response.data.ssc_board_uni);
       $("#ssc_pass_year").val(response.data.ssc_pass_year);
       $("#hsc_result").val(response.data.hsc_result);
       $("#hsc_pass_year").val(response.data.hsc_pass_year);
       $("#hsc_uni").val(response.data.hsc_uni);
       $("#dip_deg").val(response.data.dip_deg);
       $("#dip_res").val(response.data.dip_res);
       $("#dip_uni").val(response.data.dip_uni);
       $("#dip_year").val(response.data.dip_year);
       $("#gradu_deg").val(response.data.gradu_deg);
       $("#gradu_res").val(response.data.gradu_res);
       $("#gradu_year").val(response.data.gradu_year);
       $("#gradu_uni").val(response.data.gradu_uni);
       $("#post_grad_deg").val(response.data.post_grad_deg);
       $("#post_grad_res").val(response.data.post_grad_res);
       $("#post_grad_uni").val(response.data.post_grad_uni);
       $("#post_grad_year").val(response.data.post_grad_year);
       $("#high_lev_edu").val(response.data.high_lev_edu);
       $("#ttl_exp_year").val(response.data.ttl_exp_year);
       $("#ttl_exp_mon").val(response.data.ttl_exp_mon);
       $("#company_work_for").val(response.data.company_work_for);
       $("#lang_known").val(response.data.lang_known);
       $("#last_curr_emp").val(response.data.last_curr_emp);

       if(response.data.status=='0'){
        //console.log('notsubmited');
        $('.form-control').attr('readonly', false);
        $("#editnow").hide();
        //$("#save_for_query").hide();
        $("#save_for_query").prop('disabled', true);

       } else if(response.data.status=='1'  || response.data.status=='2' ){
        console.log('submitedmakereadonly');
        $('.form-control').attr('readonly', true);
        $("#editnow").show();
        $("#save_for_query").prop('disabled', false);

        } else {

        console.log('update form');
       }
       
    
     }
  });


}


function edit_resumeform(){
  $('.form-control').prop('readonly', false);
  $("#updateresume").show();
  $('#submitbtn').hide();
  $('#editnow').hide();
  
 // $('#submitbtn').prop('disabled', true);

}

function saveforquery(){
  var base_url = $("#base_url").val();
  var form_id = $("#resume_id").val();
  $.ajax({
     url:base_url+'/saveforquery',
     method: 'post',
     data: {form_id:form_id},
     dataType: 'json',
     success: function(response){
      // 
      if(response.status=='1'){
        alert(response.msg);
        location.reload();

      }
      
     }
  });
}




function save_resume(){
  var base_url = $("#base_url").val();
  var resume_id = $("#resume_id").val();
  var formData = $('#resume_form').serialize();
  $.ajax({
     url:base_url+'/store_form',
     method: 'post',
     data: formData,
     dataType: 'json',
     success: function(response){
      
        if(response.status=='1'){
            alert(response.msg);
            location.reload();    
    
          }
     }
  });

}


function save_for_query(){

  var base_url = $("#base_url").val();
  var resume_id = $("#resume_id").val();
  var formData = $('#resume_form').serialize();

$.ajax({
   url:base_url+'/save_for_query',
   method:'post',
   data:formData,
   dataType:'json',
   success: function(response){
    if(response.status=='1'){
        alert(response.msg);
         location.reload();

      }
   }
});

}
function update_resume(){
    var base_url = $("#base_url").val();
    var resume_id = $("#resume_id").val();
    var formData = $('#resume_form').serialize();
  
    $.ajax({
       url:base_url+'/update_resume',
       method: 'post',
       data: formData,
       dataType: 'json',
       success: function(response){
          if(response.status=='1'){
              alert(response.msg);
              location.reload();
            }
       }
    });
  
  }




  function submit_task(){
   
   var base_url = $("#base_url").val();
   swal({
      title: "Are you sure?",
      text: "Once submit, you will not be able to fill the form!",
      icon: "warning",
      buttons: true,
      dangerMode: true,
    })
    .then((willDelete) => {
      if (willDelete) {
     

               $.ajax({
                  url:base_url+'/submit_task',
                  method: 'post',
                  dataType: 'json',
                  success: function(response){
                     if(response.status=='1'){
                           swal("THE ULTIMATE TEAM WILL CONTACT TO YOU SOON", {
                            icon: "success",
                          });
                        location.reload();
                     }
                  }
               });
      } else {
        swal("You  have cancel process");
      }
    });
 
 }





 // A $( document ).ready() block.
$( document ).ready(function() {
   
   var approve_base_url = $("#base_url").val() + 'approval_waiting';

   var currentUrl= window.location.href;
   if(approve_base_url ==currentUrl){
      console.log('match');
      // timer();


   }
   //check approve page url 
});




// let timerOn = true;

// function timer(remaining) {
//   var m = Math.floor(remaining / 60);
//   var s = remaining % 60;
  
//   m = m < 10 ? '0' + m : m;
//   s = s < 10 ? '0' + s : s;
//   document.getElementById('timer').innerHTML = m + ':' + s;
//   console.log(m + ':' + s);
//   remaining -= 1;
  
//   if(remaining >= 0 && timerOn) {
//     setTimeout(function() {
//         timer(remaining);
//     }, 1000);
//     return;
//   }

//   if(!timerOn) {
//     // Do validate stuff here
//     return;
//   }

//   if(s ==0){
//    var msg='we will contact to you soon.wait for approval'
//    logoutuses(msg);
//   }
//   // Do timeout stuff here
// //   
// }

// timer(10);