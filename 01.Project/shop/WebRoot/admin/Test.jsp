<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>

<script src="editor/ueditor.config.js"></script>
<script src="editor/ueditor.all.js"></script>
<script type="text/javascript" charset="utf-8"
src="ueditor/ueditor.config.js"></script>
<link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon" />
<script type="text/javascript" charset="utf-8"
src="ueditor/ueditor.all.min.js"></script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
src="ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>

				<div class="form-group-col-2">
					<div class="form-label">商品描述：</div>
					<div class="form-cont">
						 <textarea style="width: 750px; height: 200px;" name="description"
			id="description"></textarea>
					</div>
				</div>
				
                <script type="text/javascript">
					UE.getEditor('description');
				</script>
				
</body>
</html>