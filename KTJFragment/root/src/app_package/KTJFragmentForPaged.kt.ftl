package ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.ui

<#if needConstructor>
import android.os.Bundle
</#if>
import com.johnson.core.fragment.BasePagedFragment
import ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.vm.${viewModelClass}
<#if dataTypeImport??>
import ${dataReference}
</#if>
<#if applicationPackage??>
import ${applicationPackage}.BR
import ${applicationPackage}.R
import ${applicationPackage}.databinding.Fragment${pageName}Binding
<#else>
import ${packageName}.BR
import ${packageName}.R
import ${packageName}.databinding.Fragment${pageName}Binding
</#if>

<#if needConstructor>
private const val ARG_PARAM1 = "param1"
</#if>


/**
 * description: ${fragmentClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 * @see BasePagedFragment
 */
class ${fragmentClass} : BasePagedFragment<${viewModelClass}, ${dataType}, Fragment${pageName}Binding>() {

    <#if needConstructor>
    private var param1: String? = null
    </#if>

    override fun layoutId() = R.layout.${layoutName}

    override fun init() {
        <#if needConstructor>
        arguments?.let {
            param1 = it.getString(ARG_PARAM1)
        }
        </#if>
        // 初始化操作
    }

    override fun bindingVariable() = BR.vm

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


    <#if needConstructor>
    companion object {
        @JvmStatic
        fun newInstance(param1: String) =
            ${fragmentClass}().apply {
                arguments = Bundle().apply {
                    putString(ARG_PARAM1, param1)
                }
            }
    }
    </#if>
}