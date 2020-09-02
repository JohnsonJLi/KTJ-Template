package ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.ui

<#if needConstructor>
import android.os.Bundle
</#if>
import com.johnson.core.fragment.BaseFragment
<#if generateViewModel>
import ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.vm.${viewModelClass}
    <#if dataTypeImport??>
import ${dataReference}
    </#if>
    <#if applicationPackage??>
import ${applicationPackage}.BR
    <#else>
import ${packageName}.BR
    </#if>
<#else>
import com.johnson.core.vm.NoViewModel;
</#if>
<#if applicationPackage??>
import ${applicationPackage}.R
import ${applicationPackage}.databinding.Fragment${pageName}Binding
<#else>
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
 * @see 	BaseFragment
 */
class ${fragmentClass} : BaseFragment<<#if generateViewModel>${viewModelClass}<#else>NoViewModel</#if>, ${dataType}, Fragment${pageName}Binding>() {

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

    <#if generateViewModel>
    override fun dataEvent(data: ${dataType}) {
        // 主数据回调
    }

    override fun bindingVariable() = BR.vm
    </#if>

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