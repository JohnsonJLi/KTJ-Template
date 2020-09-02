package ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.vm

import com.johnson.core.vm.BaseViewModel
<#if dataTypeImport??>
import ${dataReference}
</#if>

/**
 * description: ${viewModelClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 */
class ${viewModelClass} : BaseViewModel<${dataType}>() {

	override fun initData() {
	
	}

}