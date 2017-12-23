<%@ include file="../header.jsp"%>

<script type="text/javascript">
	$(function(){
		$('button.btn').click(function(){
			$.ajaxSetup({
                contentType : 'application/json'
            });
            var newsTitle = $.trim($('input[name="newsTitle"]').val());
            var newsSummary = $.trim($('input[name="newsSummary"]').val());
            var newsContent = $.trim($('textarea[name="newsContent"]').val());
            var topicId = $.trim($('select[name="topicId"]').val());
            $.ajax(
                {
                    type: 'post',//这里改为get也可以正常执行
                    url: '/blog/admin/doAdd',
                    contentType:"application/json",
                    data: JSON.stringify({"newsTitle":newsTitle,"newsSummary":newsSummary,"newsContent":newsContent,"topicId":topicId}),
                    success:function (data) {
                        alert("Success");
                    }
                }
            )
		});
	});
</script>
<div class="clearfix" style="margin-bottom: 20px;padding:48px 60px;background-color: #eee;border-radius: 6px;">
  <div class="row clearfix">
	<div class="col-md-12 column">
		<!-- <form role="form" action="<%=basePath %>admin/doAdd" method="post" enctype='multipart/form-data'> -->
		<form action="<%=basePath %>admin/doAdd" method="post" id="myform">
			<div class="form-group">
				 <label for="news_title">News Title</label><input type="text" name="newsTitle" class="form-control" id="news_title" required placeholder="News Title" maxlength="255" value="Title"/>
			</div>
			<div class="form-group">
				 <label for="news_summary">News Summary</label><input type="text" name="newsSummary" class="form-control" id="news_summary" required placeholder="News Summary" maxlength="500" value="Summary"/>
			</div>
			<div class="form-group">
				 <label for="news_content">News Content</label><textarea name="newsContent" class="form-control" id="news_content" required placeholder="News Content" style="height: 300px;"/>Content</textarea>
			</div>
			<div class="form-group">
				<label for="name">News Topic</label>
				<select class="form-control" name="topicId" required>
					<option value="">- Please Choose One -</option>
					<c:forEach items="${topicLists}" var="item" varStatus="status">
						<option value="${item.topicId}" ${status.index==0?" selected":""}>${item.topicName}</option>
					</c:forEach>
				</select>
			</div><!-- 
			<div class="form-group">
				 <label for="exampleInputFile">News Pic</label><input type="file" name="newsPic" id="news_pic" required/>
				<p class="help-block">
					choose one picture for this news.
				</p>
			</div> -->
			<div class="checkbox">
				 <!-- <label><input type="checkbox" value="1" name="nothing"/>To Do Nothing!</label> -->
			</div> 
			<button type="button" class="btn btn-default">Submit</button>
		</form>
	</div>
</div>
<%@ include file="../footer.jsp"%>