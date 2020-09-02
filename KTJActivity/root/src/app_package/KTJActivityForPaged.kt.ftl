package ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.ui

import android.os.Bundle

import com.johnson.core.activity.BasePagedActivity
import ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.vm.${viewModelClass}
<#if dataTypeImport??>
import ${dataReference}
</#if>

<#if applicationPackage??>
import ${applicationPackage}.R
import ${applicationPackage}.databinding.Activity${pageName}Binding
<#else>
import ${packageName}.R
import ${packageName}.databinding.Activity${pageName}Binding
</#if>

/**
 * description: ${activityClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 * @see BasePagedActivity
 */
class ${activityClass} : BasePagedActivity<${viewModelClass}, ${dataType}, Activity${pageName}Binding>() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
		setContentView(R.layout.${layoutName})
    }

    override fun newData(list: List<${dataType}>?) {
        TODO("设置数据 使用时请修改 List<T> 类型")
    }

    override fun addData(list: List<${dataType}>) {
        TODO("添加数据 使用时请修改 List<T> 类型")
    }

    override fun hideLoading() {
        TODO("隐藏 Loading / 隐藏下拉刷新")
    }

    override fun loadMoreComplete() {
        TODO("加载更多 完成")
    }

    override fun loadMoreFailed() {
        TODO("加载更多 错误")
    }

    override fun loadMoreEnd() {
        TODO("没有更多数据")
    }
}