<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="utf-8">
<title></title>
</head>
 
<script src="NewFile.js"></script>

 
 

 
 
 
<!-- HTML BODY-------------------------------------------------------------- -->
<body>
    <form action="joinCheck.jsp" method="get"
        onsubmit="return validate()">
 
 
        <center>
            <table border="1" cellspacing="0" id="myTable">
 
                <tr align="center">
                    <td colspan="2" bgcolor="00FA9A">회원기본정보</td>
                </tr>
 
                <tr>
                    <td align="center" bgcolor="90EE90">아이디:</td>
                    <td><input type="text" id="myid" name="myid">4~12자의 영문 대소문자와 숫자로만
                        입력</td>
                </tr>
 
                <tr>
                    <td align="center" bgcolor="90EE90">비밀번호:</td>
                    <td><input type="text" id="password" name="password">4~12자의 영문 대소문자와
                        숫자로만 입력</td>
                </tr>
 
                <tr>
                    <td align="center" bgcolor="90EE90">비밀번호 확인:</td>
                    <td><input type="text" id="confirmpassword" name="confirmpassword"></td>
                </tr>
 
                <tr>
                    <td align="center" bgcolor="90EE90">메일주소:</td>
                    <td><input type="text" size="25" id="email" name="email">예)id@domain.com
                    </td>
                </tr>
 
 
                <tr>
                    <td align="center" bgcolor="90EE90">이름:</td>
                    <td><input type="text" size="25" id="name" name="name">4~12자의 영문 대소문자와 숫자로만
                        입력</td>
                </tr>
 
                
                    
 
 
                <tr align="center">
                    <td colspan="2" bgcolor="00FA9A">개인 신상 정보</td>
                </tr>
 
 
                 <tr>
 
                <td align="center" bgcolor="90EE90">주소:</td>
 
                
                <td colspan="2"><input type="text" name=""class="postcodify_postcode5" value="" size="90" />
                
                    <button id="postcodify_search_button">검색</button>
                    <br /> 
                    
                    <input type="text" name="" class="postcodify_address" value="" size="90" /><br />
                    <input type="text" name="" class="postcodify_details" value="" size="90" id="address" /><br />
                    <input type="text" name="" class="postcodify_extra_info" value=""size="90" /><br /></td>
                    
                
                <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
                <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
 
            
                <script>
                    $(function() {
                        $("#postcodify_search_button").postcodifyPopUp();
                    });
                </script>
                
                
                </tr>
 
 
 
                <tr>
                    <td align="center" bgcolor="90EE90">주민등록번호:</td>
                    <td><input type="text" value="" size="25" id="Rrn" name="Rrn">예)1234561234567
                    </td>
                </tr>
 
 
 
                <tr>
                
                    <td align="center" bgcolor="90EE90">생일:</td>
                    
                    <td><input type="text" size="10" id="birth_year" name="birth_year">년
                    
                     <select id="birth_month" name="birth_month">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                    </select>월 
                    
                    <select id="birth_day" name="birth_day">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                    </select>일
                    </td>
                </tr>
 
 
 
                <tr>
                    <td align="center" bgcolor="90EE90">관심분야:</td>
                    
                    <td><input type="checkbox" name="intereted" value="컴퓨터">컴퓨터
                        <input type="checkbox" name="intereted" value="인터넷">인터넷
                         <input type="checkbox" name="intereted" value="여행">여행 
                         <input type="checkbox" name="intereted" value="영화감상">영화감상 
                         <input type="checkbox" name="intereted" value="음악감상">음악감상
                    </td>
                </tr>
 
 
 
                <tr>
                    <td align="center" bgcolor="90EE90">자기소개:</td>
                    <td><textarea rows="8" cols="60" id="introduce"></textarea>
                    </td>
                </tr>
 
 
 
            </table>
        </center>
 
        <br>
        <center>
            <input type="submit" value="회원 가입"> <input type="reset"
                value="다시 입력">
        </center>
 
 
    </form>
</body>
</html>















