<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%
   String[] checks = request.getParameterValues("checkbox");

   int checklen = 0;
   checklen = checks.length;
%>

<script language="JavaScript">
   //var checks=request.getParameterValues("checkbox"); 
   
   function layer1(num,i) {
      var point = [];
      point[0] = mark0.style;
      point[1] = mark1.style;
      point[2] = mark2.style;
      point[3] = mark3.style;
      point[4] = mark4.style;
         if(num == 1) {
            point[i].display='block';
            point[i].top = '50px';
            point[i].left = '300px';
         }
         else if (num == 2) {
            point[i].display='block';
            point[i].top = '100px';
            point[i].left = '250px';
         } 
         else if (num == 3) {
            point[i].display='block';
            point[i].top = '150px';
            point[i].left = '350px';
         } 
         else if (num == 4) {
            point[i].display='block';
            point[i].top = '200px';
            point[i].left = '200px';
         }
         else if (num == 5) {
            point[i].display='block';
            point[i].top = '300px';
            point[i].left = '200px';
         }
         else if (num == 6) {
               point[i].display='block';
               point[i].top = '300px';
               point[i].left = '450px';
            } 
            else if (num == 7) {
               point[i].display='block';
               point[i].top = '170px';
               point[i].left = '320px';
            } 
            else if (num == 8) {
               point[i].display='block';
               point[i].top = '230px';
               point[i].left = '30px';
            }
            else if (num == 9) {
               point[i].display='block';
               point[i].top = '260px';
               point[i].left = '180px';
            }
            else if (num == 10) {
               point[i].display='block';
               point[i].top = '160px';
               point[i].left = '20px';
            } 
            else if (num == 11) {
               point[i].display='block';
               point[i].top = '20px';
               point[i].left = '35px';
            } 
            else if (num == 12) {
               point[i].display='block';
               point[i].top = '420px';
               point[i].left = '440px';
            }
            else if (num == 13) {
               point[i].display='block';
               point[i].top = '500px';
               point[i].left = '270px';
            }
            else if (num == 14) {
               point[i].display='block';
               point[i].top = '480px';
               point[i].left = '20px';
            } 
            else if (num == 15) {
               point[i].display='block';
               point[i].top = '430px';
               point[i].left = '111px';
            } 
            else if (num == 16) {
               point[i].display='block';
               point[i].top = '123px';
               point[i].left = '345px';
            }
   }
   function first() {
      //checks에는 기구넘버가들어감
      var chks=new Array();
      

   <%for (int i = 0; i < 5; i++) {%>
      chks[<%=i%>]='<%=checks[i]%>';
   <%}%>
   
   <%for (int i = 0; i < 5; i++) {%>
   layer1(chks[<%=i%>],<%=i%>);
   <%}%>
   alert(chks);
   }
</script>
</head>

<body onload="first()">
   <img src="img/1bears/1map.jpg" width="800" height="500">
   <div id="mark0" style="position: absolute; top: 0px; left: 0px;">
      <img src="img/point.png">
   </div>
   <div id="mark1" style="position: absolute; top: 0px; left: 0px;">
      <img src="img/point.png">
   </div>
   <div id="mark2" style="position: absolute; top: 0px; left: 0px;">
      <img src="img/point.png">
   </div>
   <div id="mark3" style="position: absolute; top: 0px; left: 0px;">
      <img src="img/point.png">
   </div>
   <div id="mark4" style="position: absolute; top: 0px; left: 0px;">
      <img src="img/point.png">
   </div>
</body>
</html>