<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<title>微信页面</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/page.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/center.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/mobiscroll.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/mobiscroll_date.css"/>
<script src="<%=request.getContextPath()%>/resources/js/jquery-1.7.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.touchSwipe.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/js/iscroll.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/js/main.js" type="text/javascript"></script>
</head>
<style>
  html,body{
	  background:#f3f3f3;
  }
</style>

<body>
  <!--content-->
  <div class="content">
    <!--审批业务名称及返回按钮-->
    <div class="message_goback">
      <a href="${pageContext.request.contextPath}/lc/list.action"> < <span>${map['flow_info'].flow_name }</span></a>
    </div>
    <jsp:include page="/WEB-INF/jsp/flowview/${map['flow_info'].flow_sign}.jspf"/>
   
  </div>
  <!--底部栏-->
    <!--审批按钮-->
    <div class="ywsp_button">
       <ul>
        <c:forEach items="${btns }" var="btn" varStatus="status">
         <li class="refuse" style='width:${100/fn:length(btns)}%'><a href="${pageContext.request.contextPath}/lc/exec.action?flowId=${btn.flow_id}&nodeId=${btn.node_id}&executedId=${btn.executed_id}">${btn.executed_name }</a></li>
         </c:forEach>
       </ul>
    </div>
    <!--审批按钮-->
    <!--页面公用底部导航-->
      <div class="bottom_nav"><!--导航选中效果加class：nav_actived-->
         <ul>
           <li class="fangyuan">
             <a>
              <i></i>
              <p>房源</p>
             </a>
           </li>
           <li class="yuding">
             <a>
              <i></i>
              <p>预定</p>
             </a>
           </li>
           <li class="yewu nav_actived">
             <a>
              <i></i>
              <p>业务</p>
             </a>
           </li>
           <li class="chaobiao">
             <a>
              <i></i>
              <p>抄表</p>
             </a>
           </li>
         </ul>
      </div>
    <!--页面公用底部导航-->
  <!--底部栏-->
  <!--content-->
 </body>
</html>
