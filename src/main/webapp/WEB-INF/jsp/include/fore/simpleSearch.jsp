<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<style>


</style>
    <div>
        <a href="forehome"><img src="img/site/simpleLogo.png" class="simpleLogo"
                id="simpleLogo"></a>

		<form action="foresearch" method="post">
        <div class="pull-right simpleSearchDiv">
            <input type="text" name="keyword" placeholder="平衡车 原汁机">
            <button type="submit" class="searchButton">搜天猫</button>
            <div class="searchBelow">
                <c:forEach items="${cs}" var="c" varStatus="st">
                <c:if test="${st.count>=8 and st.count<=11}">
                    <span>
                        <a href="forecategory?cid=${c.id}">
                            ${c.name}
                        </a>
                        <c:if test="${st.count!=11}">            
                            <span>|</span>             
                        </c:if>
                    </span>          
                </c:if>
            </c:forEach> 
            </div>
        </div>
        </form>
        <div style="clear:both"></div>
    </div>