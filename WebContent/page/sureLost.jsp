<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import=" com.rlg.crm.domain.Lost"%>
<%@page import="java.util.List,
				java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>新建交往记录</title>
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
    <link href="<%=request.getContextPath() %>/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/animate.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg top-navigation">

    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom white-bg">
                <nav class="navbar navbar-static-top" role="navigation">
                    <div class="navbar-header">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                            <i class="fa fa-reorder"></i>
                        </button>
                        <a href="cusManageUpdate.html" class="navbar-brand">客户信息管理管理</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a id="save">
                                    <i class="fa fa-sign-out"></i> 保存
                                </a>
                            </li>
                        </ul>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a href="login.html">
                                    <i class="fa fa-sign-out"></i>暂缓流失
                                </a>
                            </li>
                        </ul>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a id="back">
                                    <i class="fa fa-sign-out"></i> 返回
                                </a>
                            </li>
                        </ul>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a href="login.html">
                                    <i class="fa fa-sign-out"></i> 帮助
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="wrapper wrapper-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ibox float-e-margins">
                                <div class="ibox-title">
                                    <h5>确认流失</h5>
                                </div>

                                <div class="ibox-content">
                                    <form role="form" class="form-horizontal" action="lostlist?flag=sure" name="form1" method="post">
                                        <div class="ibox-content">
                                           <% Lost lost=(Lost)request.getAttribute("lostsure"); %>
                                            <div class="form-group col-sm-6">
                                                <label for="lst_cust_no" class="col-sm-4 control-label">编号：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" name="losId" value="<%=lost.getLosId()%>" id="lst_cust_no" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label  class="col-sm-4 control-label" FOR="atv_place">客户：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" value="<%=lost.getLosCustomer() %>" id="atv_place" name="losCustomer" readonly="readonly"/>

                                                </div>
                                            </div>

                                            <div class="form-group col-sm-6">
                                                <label for="atv_title" class="col-sm-4 control-label">客户经理：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" value="<%=lost.getLosManager() %>" id="atv_title" name="losManager" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label for="lst_last_order_date" class="col-sm-4 control-label">上次下单时间：</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" value="<%=lost.getLosLastOrder() %>" id="lst_last_order_date" name="losLastOrder" readonly="readonly"/>
                                                </div>
                                            </div>

                                            <div class="form-group ">
                                                <label for="lst_delay" class="col-sm-2 control-label">暂缓措施：</label>
                                                <div class="col-sm-6">
                                                    <textarea rows="5" class="form-control"  id="lst_delay" name="LosRespite()" readonly="readonly"><%=lost.getLosRespite() %></textarea>
                                                </div>
                                            </div>

                                            <div class="form-group ">
                                                <label for="lst_reason" class="col-sm-2 control-label">流失原因：</label>
                                                <div class="col-sm-6">
                                                    <textarea rows="5" class="form-control"id="lst_reason" name="lstReason" ></textarea>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                               <input type="submit" style="display: none;" id="btn1">
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
            <div class="footer">
                <div class="pull-right">
                    By：<a href="http://www.zi-han.net" target="_blank">zihan's blog</a>
                </div>
                <div>
                    <strong>Copyright</strong> H+ &copy; 2014
                </div>
            </div>

        </div>
    </div>

    <!-- 全局js -->
    <script src="<%=request.getContextPath() %>/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- 自定义js -->
    <script src="<%=request.getContextPath() %>/js/content.js?v=1.0.0"></script>


    <!-- Bootstrap table -->
    <script src="<%=request.getContextPath() %>/js/plugins/bootstrap-table/bootstrap-table.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/plugins/bootstrap-table/bootstrap-table-mobile.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/plugins/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>

    <!-- Peity -->
    <script src="<%=request.getContextPath() %>/js/demo/bootstrap-table-demo.js"></script>

    <script type="<%=request.getContextPath() %>/text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <!--统计代码，可删除-->

</body>
<script type="text/javascript">
$("#back").click(function(){
 	window.history.go(-1);
})

$("#save").click(function(){
		$("#btn1").click();
	})
</script>

</html>