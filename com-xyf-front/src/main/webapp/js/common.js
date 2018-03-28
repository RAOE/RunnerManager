/**
 * 弹出一个页面 ，如果不知道宽和高，则会全屏显示
 */
function showLayer(title, url, width, height) {

    var index = layer.open({
        type : 2,
        title : title,
        area : [ width + 'px', height + 'px' ],
        content : url
    });
    if (!width || !height) {
        layer.full(index);
    }

}

// 以ajax的方式提交表单，并且当操作成功时，刷新父页面（自然相当于也就把这个子页面删掉了）
// 适用于后台系统中使用layer插件手动创建的iframe弹出页面
// isReloadParent：是否重新加载父页面，否则重新加载本页面
function ajaxSubmitForm(form, isReloadParent) {

    $.post(form.action, $(form).serialize(), function(ajaxResult) {
        alert(ajaxResult.data);
        if (ajaxResult.status == 'success') {
            if (isReloadParent) {
                parent.location.reload();
            } else {
                location.reload();
            }
        }
    }, 'json');
    event.preventDefault();
}
/**
 * 使用ajax发送一个请求
 */
function ajaxSubmit(url, params) {
    $.post(url, params, function(ajaxResult) {
        alert(ajaxResult.data);
        if (ajaxResult.status == 'success') {
            location.reload();
        }
    }, 'json');
}

/**
 * 删除
 */
function ajaxDelete(url, params) {
    var reply = confirm('确定要删除吗？');
    if (reply) {
        $.post(url, params, function(ajaxResult) {
            if (ajaxResult.status == 'success') {
                location.reload();
            } else {
                // 删除失败后才告知用户删除失败
                alert(ajaxResult.data);
            }
        }, 'json');
    }
}
