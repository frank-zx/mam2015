<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div id="nav">
        <ul class="nav-ul">
            <li class="nav-li nav-first ">
                <div class="nav-head">
                    <a href="javascript:void(0);">
                        <span class="nav-title">消息管理</span>
                        <span class="down"></span>
                        <br>
                        <i></i>
                    </a>
                </div>
                <ul class="nav-body">
                    <li class="li-active">
                        <a href="html/pages/admin/index.jsp">
                            <span class="li-title">发布消息</span>
                            <span class="left"></span>
                        </a>
                    </li>
                    <li>
                        <a href="admin/adminNewsShow.action">
                            <span class="li-title">查看消息</span>
                            <span class="left"></span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-li">
                <div class="nav-head">
                    <a href="javascript:void(0);">
                        <span class="nav-title">资源管理</span>
                        <span class="down"></span>
                        <br>
                        <i></i>
                    </a>
                </div>
               <ul class="nav-body">
                    <li>
                        <a href="html/pages/admin/index_upload.jsp">
                            <span class="li-title">资源上传</span>
                            <span class="left"></span>
                        </a>
                    </li>
                    <li>
                        <a href="admin/resource.action">
                            <span class="li-title">查看删除</span>
                            <span class="left"></span>
                        </a>
                    </li>
                    
                </ul>
            </li>
            <li class="nav-li">
                <div class="nav-head">
                    <a href="javascript:void(0);">
                        <span class="nav-title">论文管理</span>
                        <span class="down"></span>
                        <br>
                        <i></i>
                    </a>
                </div>
                <ul class="nav-body">
                    <li>
                        <a href="admin/paper.action">
                            <span class="li-title">论文下载</span>
                            <span class="left"></span>
                        </a>
                    </li>
                    <li>
                        <a>
                            <span class="li-title">XXXX</span>
                            <span class="left"></span>
                        </a>
                    </li>
                    
                </ul>
            </li>
            <li class="nav-li">
                <div class="nav-head">
                    <a href="javascript:void(0);">
                        <span class="nav-title">参会人员</span>
                        <span class="down"></span>
                        <br>
                        <i></i>
                    </a>
                </div>
                  <ul class="nav-body">
                    <li>
                        <a href="admin/partiShow.action?isPayed=false">
                            <span class="li-title">未审缴费</span>
                            <span class="left"></span>
                        </a>
                    </li>
                    <li>
                        <a href="admin/partiShow.action?isPayed=true">
                            <span class="li-title">已审缴费</span>
                            <span class="left"></span>
                        </a>
                    </li>
                    
                </ul>
          
            </li>
        </ul>
        
        <a href="admin/exit.action">退出</a>
    </div>