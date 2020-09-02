package ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.ui

import android.os.Bundle
import com.johnson.core.activity.BaseListActivity
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
 * @see 	BaseListActivity
 */
class ${activityClass} : BaseListActivity<${viewModelClass}, ${dataType}, Activity${pageName}Binding>() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
		setContentView(R.layout.${layoutName})
    }

    override fun recyclerViewAdapter() = TODO("返回 BaseQuickAdapter")

    override fun recyclerView() = TODO("返回 RecyclerView")

}