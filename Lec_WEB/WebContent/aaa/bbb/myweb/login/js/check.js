$(".agree").click(function () {

    if ($("input:checkbox[name=chk]:checked").length !=
        $("input:checkbox[name=chk]").length) {
        alert("약관 전부 동의해주세요!");
    } else {
        location.href= "join1.html";
    }
    return false;    
                
    });


    $( document ).ready( function() {
        $( '.cheka' ).click( function() {
          $( '.chek1' ).prop( 'checked', this.checked );
        } );
      } );

      $(function(){
        // 중복확인 & id 유효성검사             
        $("#duplcheck").on("click",function(){
            var id = $("#id").val();
            if(id == ""){
              alert("아이디를 입력해주세요");
              return;
            }
            var regex = /^[a-z][a-z\d]{4,11}$/;
          var result = regex.exec(id);
            
           if(result != null){
                 $(".id.regex").html("");
            window.open("idDuplCheck.jsp?id="+ id,"","width=500px,height=300px,top=300px,left=200px");
             }else{
                 $(".id.regex").html("영어 소문자,숫자 4-12자리");
                 $(".id.regex").css("color","red")
             }
            
            
        })
            
     
  //비밀번호 유효성검사
        $("#pw").on("input",function(){
            var regex = /^[A-Za-z\d]{8,12}$/;
            var result = regex.exec($("#pw").val())
            
            if(result != null){
                $(".pw.regex").html("");
            }else{
                $(".pw.regex").html("영어대소문자,숫자 8-11자리");
                $(".pw.regex").css("color","red")
            }
        });
        
       //비밀번호 확인    
           $("#repw").on("keyup",function(){
                if($("#pw").val()==$("#repw").val()){
                   $(".repw.regex").html("비밀번호가 일치합니다"); 
                }else{
                 $(".repw.regex").html("비밀번호가 일치하지않습니다"); 
                }
           })
        
        //이름 유효성검사
            $("#name").on("input",function(){
                var regex = /[가-힣]{2,}/;
                var result = regex.exec($("#name").val());
                
                if(result != null){
                   $(".name.regex").html("");  
                }else{
                    $(".name.regex").html("한글만 입력 가능합니다.");
                }
                
            })
        
        //전화번호 유효성검사
            $("#phone").on("input",function(){
                 var regex = /^01\d\d{3,4}\d{4}$/;
                 var result = regex.exec($("#phone").val());
                
                if(result != null){
                   $(".phone.regex").html("");  
                }else{
                    $(".phone.regex").html("올바른 번호가 아닙니다");
                }
                
            })
        
        //email유효성 검사
            $("#email").on("input",function(){
                 var regex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
                 var result = regex.exec($("#email").val());
                
                if(result != null){
                   $(".email.regex").html("");  
                }else{
                    $(".email.regex").html("올바른 이메일이 아닙니다");
                }
            })
      //회원가입 버튼 눌렀을 때, 빈칸 있으면 다시 유효성 검사진행    
       $("#signupbtn").on("click",function(){
         var id = $("#id").val();
         var pw = $("#pw").val();
         var name = $("#name").val();
         var phone = $("#phone").val();
         var email = $("#email").val();
         
         var idregex = /^[a-z][a-z\d]{4,11}$/;
         var pwregex = /^[A-Za-z\d]{8,12}$/;
         var nameregex = /[가-힣]{2,}/;
         var phoneregex = /^01\d\d{3,4}\d{4}$/;
         var emailregex = /.+@[a-z]+(\.[a-z]+){1,2}$/;
         
         var idregex = idregex.exec(id);
         if(idregex == null){
           alert("아이디양식을 다시 확인해주세요");
           return;
         }
         var pwregex = pwregex.exec(pw);
         if(pwregex == null){
           alert("비밀번호양식을 다시 확인해주세요");
           retrun;
         }
         var nameregex = nameregex.exec(name);
         if(nameregex == null){
           alert("이름양식을 다시 확인해주세요");
           retrun;
         }
         var phoneregex = phoneregex.exec(phone);
         if(phoneregex == null){
           alert("핸드폰번호양식을 다시 확인해주세요");
           retrun;
         }
         var emailregex = emailregex.exec(email);
         if(emailregex == null){
           alert("이메일양식을 다시 확인해주세요");
           retrun;
         }
         
         //빈칸 없을 때 제출.
         $("#signform").submit();
             
       
       })
    })