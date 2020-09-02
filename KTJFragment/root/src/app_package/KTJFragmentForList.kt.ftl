package ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.ui

<#if needConstructor>
import android.os.Bundle
</#if>
import com.johnson.core.fragment.BaseListFragment
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
 * @see 	BaseListFragment
 */
class ${fragmentClass} : BaseListFragment<${viewModelClass}, ${dataType}, Fragment${pageName}Binding>() {

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

    override fun recyclerViewAdapter() = TODO("返回 BaseQuickAdapter")

    override fun recyclerView() = TODO("返回 RecyclerView")

    override fun bindingVariable() = BR.vm


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