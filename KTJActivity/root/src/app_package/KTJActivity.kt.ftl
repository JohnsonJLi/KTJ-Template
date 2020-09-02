package ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.ui

import android.os.Bundle
import com.johnson.core.activity.BaseActivity
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
 * @see 	BaseActivity
 */
class ${activityClass} : BaseActivity<<#if generateViewModel>${viewModelClass}<#else>NoViewModel</#if>, ${dataType}, Activity${pageName}Binding>() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
		setContentView(R.layout.${layoutName})
    }

    <#if generateViewModel>
    override fun dataEvent(data: ${dataType}) {
        // 主数据回调
    }

    override fun bindingVariable() = BR.vm
    </#if>
}