<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="_meta.jsp" />
    <title>产品列表页</title>
</head>
<script type="text/javascript" charset="UTF-8">

    //点击效果start
    function infonav_more_down(index) {
        var inHeight = ($("div[class='p_f_name infonav_hidden']").eq(index).find('p').length) * 30;//先设置了P的高度，然后计算所有P的高度
        if (inHeight > 60) {
            $("div[class='p_f_name infonav_hidden']").eq(index).animate({height: inHeight});
            $(".infonav_more").eq(index).replaceWith('<p class="infonav_more"><a class="more"  onclick="infonav_more_up(' + index + ');return false;" href="javascript:">收起<em class="pulldown"></em></a></p>');
        } else {
            return false;
        }
    }

    function infonav_more_up(index) {
        var infonav_height = 85;
        $("div[class='p_f_name infonav_hidden']").eq(index).animate({height: infonav_height});
        $(".infonav_more").eq(index).replaceWith('<p class="infonav_more"> <a class="more" onclick="infonav_more_down(' + index + ');return false;" href="javascript:">更多<em class="pullup"></em></a></p>');
    }

    function onclick(event) {
        info_more_down();
        return false;
    }

    //点击效果end
    //-->
    //实现手风琴下拉效果
    $(function () {
        $(".nav").accordion({
            //accordion: true,
            speed: 500,
            closedSign: '+',
            openedSign: '-'
        });
    });

    $(function () {
        $("#scrollsidebar").fix({
            float: 'left',
            //minStatue : true,
            skin: 'green',
            durationTime: 600
        });
    });
</script>
<body>
<head>
    <jsp:include page="_header.jsp" />
</head>
<!--产品列表样式-->
<div class="Inside_pages">
    <!--位置-->
    <div id="Filter_style">
        <div class="Location_link">
            <em></em><a href="#">进口食品、进口牛</a> &lt; <a href="#">进口饼干/糕点</a>
        </div>
        <!--条件筛选样式-->
        <div class="Filter" id="Filter">
            <div class="Filter_list clearfix">
                <div class="Filter_title"><span>品牌：</span></div>
                <div class="Filter_Entire"><a href="#" class="Complete">全部</a></div>
                <div class="p_f_name infonav_hidden" style="height: 85px;">
                    <c:forEach items="${typeList}" var="typelist">
                        <p>
                            <c:forEach items="${typelist}" var="list">
                                <a href="${pageContext.request.contextPath}/goods/type?typeid=${list.id}&page=1"
                                   title="${list.name}">${list.name}</a>
                            </c:forEach>
                        </p>
                    </c:forEach>

                </div>
                <p class="infonav_more"><a class="more" onclick="infonav_more_down(0);return false;" href="javascript:">更多<em
                        class="pullup"></em></a></p>
            </div>
        </div>
    </div>
    <!--产品列表样式-->
    <div class="scrollsidebar side_green clearfix" id="scrollsidebar">
        <div class="show_btn" id="rightArrow"><span></span></div>

        <div class="page_right_style">
            <div class="Sorted">
                <div class="Sorted_style">
                    <a href="#" class="on">综合<i class="iconfont icon-fold"></i></a>
                    <a href="#">信用<i class="iconfont icon-fold"></i></a>
                    <a href="#">价格<i class="iconfont icon-fold"></i></a>
                    <a href="#">销量<i class="iconfont icon-fold"></i></a>
                </div>
                <!--产品搜索-->
                <div class="products_search">
                    <input name="" type="text" class="search_text" value="请输入你要搜索的产品" onfocus="this.value=''"
                           onblur="if(!value){value=defaultValue;}"><input name="" type="submit" value=""
                                                                           class="search_btn">
                </div>
                <!--页数-->
                <div class="s_Paging">
                    <span> 1/12</span>
                    <a href="#" class="on">&lt;</a>
                    <a href="#">&gt;</a>
                </div>
            </div>
            <div class="p_list  clearfix">
                <ul>
                    <c:forEach items="${goodsList.list}" var="list">
                        <li class="gl-item">
                            <em class="icon_special tejia"></em>
                            <div class="Borders">
                                <div class="img"><a href="${pageContext.request.contextPath}/goodsDetail/?goodsid=${list.id}" target="_blank"><img
                                        src="${pageContext.request.contextPath}/img/${list.thumb_img}"
                                        style="width:220px;height:220px"></a>
                                </div>
                                <div class="Price"><b>¥${list.discount}</b></div>
                                <div class="name"><a href="${pageContext.request.contextPath}/goodsDetail/?goodsid=${list.id}" target="_blank">${list.name}</a></div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
                <div class="Paging">
                    <div class="Pagination">
                        <c:if test="${!goodsList.isFirstPage}">
                            <a href="#">首页</a>
                        </c:if>
                        <c:if test="${goodsList.hasPreviousPage}">
                            <a href="#" class="pn-prev disabled">&lt;上一页</a>
                        </c:if>
                        <c:forEach begin="1" end="${goodsList.pages}" var="pageNum">
                            <a href="#" class="pageNum" data-index="${pageNum}">${pageNum}</a>
                        </c:forEach>
                        <c:if test="${goodsList.hasNextPage}">
                            <a href="#">下一页&gt;</a>
                        </c:if>
                        <c:if test="${goodsList.isLastPage}">
                            <a href="#">尾页</a>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--网站地图-->
<jsp:include page="_footer.jsp" />
<script type="text/javascript">
    $('.pageNum').click(function () {
        var url = window.location.href;
        if (/page/.test(url)) {
            window.location.href = url.slice(0, url.search(/page=/) + 5) + page;
        }
        if (/\?/.test(url))
            window.location.href = url + '&page=' + $(this).attr('data-index');
        else
            window.location.href = url + '?page=' + $(this).attr('data-index');
    })
</script>
</body>
</html>
