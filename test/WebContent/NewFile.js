var idCheck =/^[a-zA-Z0-9]{4,12}$/;
var pwCheck =/^[a-zA-Z0-9]{4,12}$/;
var mailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
 
var RrnCheck2 =/^[0-9]{13}$/; // 숫자만 13자리 입력가능
var RrnArray = new Array(); // 주민번호 담을 어레이
 
 
//유효성 검사
function validate() {
  if(idValidate()&&pw1Validate()&&pw2Validate()&&mailValidate()&&RrnValidate()){
    window.alert("method returns true");
    return true;
  }else{
    window.alert("method returns false");
    return false;
  }
}
 
//아이디 유효성 검사
function idValidate(){
  var myid = document.getElementById("myid");
  //window.alert("안녕");
  var myid = document.getElementById("myid");
  var idOK = idCheck.exec(myid.value);
  if(idOK){
    window.alert("아이디 정상입니다.")
    return true;
  }else{
    window.alert("ID 형식이 틀립니다.");
    return false;
  }
}
 
//비밀번호 유효성 검사
function pw1Validate(){
  var pw1 = pwCheck.exec(password.value);
  if(pw1&& myid.value!=password.value){
    window.alert("비번1 정상입니다.")
    return true;
  }else{
    window.alert("Passwd 형식이 틀립니다.");
    return false;
  }
}
 
//비밀번호 확인 유효성 검사
function pw2Validate(){
  var pw2OK = pwCheck.exec(confirmpassword.value);
  if(pw2OK&&password.value==confirmpassword.value){
    window.alert("비번2 정상입니다.")
    return true;
  }else{
    window.alert("Passwd 형식이 틀립니다.");
    return false;
  }
}
 
//이메일 확인 유효성 검사
function mailValidate(){
  var mailOK = mailCheck.exec(email.value);
  if(mailOK){
    window.alert("이메일 정상입니다.")
    return true;
  }else{
    window.alert("이메일 형식이 틀립니다.");
    return false;
  }
}
 
 
// 집주소 유효성검사
function homeAddressValidate(){
  var objAddress = document.getElementById("address");
  var addressOk = homeAddressCheck.exec(objAddress.value);
  if(addressOk){
    alert("집주소 정상입니다.")
    return true;
  }else{
    alert("집주소 형식이 틀립니다.");
    return false;
  }
}
 
 
 
 
 
//주민등록번호 유효성 검사
function RrnValidate(){
 
  window.alert("rrn method is called");
  var RrnOK = RrnCheck2.exec(Rrn.value);  // 숫자만 들어왔을때 true
  window.alert(Rrn.value);
  window.alert(RrnOK);
 
  //숫자만 13자리 들어왔을때
  if(RrnOK){
    var RrnCheck = document.getElementById("Rrn");  //바인딩
    // 주민번호 입력한거 배열에 담아주기
    for(var i=0; i< RrnCheck.value.length; i++){
      RrnArray[i] = RrnCheck.value.charAt(i);
    }
    // 주민번호 유효성 계산해주기
    var tempSum=0;
    for(var i=0; i<6 ; i++){
      tempSum += RrnArray[i] * (2+i);
    }
 
    for(var i=0; i<6; i++){
      if(i>=2){
        tempSum += RrnArray[i+6] * i;
      }
 
      else{
        tempSum += RrnArray[i+6] * (8+i);
      }
    }
 
 
    //유효성 검사 결과
    if((11-(tempSum%11))%10 != RrnArray[12]){
      window.alert("올바른 주민번호가 아닙니다.");
      RrnArray="";
      return false;
    }
    else{
      window.alert("올바른 주민등록번호 입니다.");
      // 생일에 주민번호 입력한 앞 6자리 넣어주기
      var birthYear = document.getElementById("birth_year");
      var birthMonth = document.getElementById("birth_month");
      var birthDay = document.getElementById("birth_day");
 
      // 년도 설정
      if(RrnArray[0]>2){
        birth_year.value = "19"+RrnArray[0]+RrnArray[1];
      }else{
        birth_year.value = "20"+RrnArray[0]+RrnArray[1];
      }
      // 월 설정
      if(RrnArray[2]==0){
        birth_month.value = RrnArray[3];
      }else{
        birth_month.value = RrnArray[2]+RrnArray[3];
      }
      // 일 설정
      if(RrnArray[4]==0){
        birth_day.value = RrnArray[5];
      }else{
        birth_day.value = RrnArray[4]+RrnArray[5];
      }
 
      return true;
    }
  }else{
    window.alert("주민등록번호 형식이 틀립니다.");
    return false;
  }
}