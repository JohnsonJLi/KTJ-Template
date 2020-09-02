package ${escapeKotlinIdentifiers(packageName)}.${pageName?lower_case}.vm

import com.johnson.core.vm.BaseListViewModel
<#if dataTypeImport??>
import ${dataReference}
</#if>

/**
 * description: ${viewModelClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 * @see 	BaseListViewModel
 */
class ${viewModelClass} : BaseListViewModel<${dataType}>() {

    /**
     * 在此函数实现 数据加载
     * 页码 [page] 每页数量 [pageSize]
     * 请求成功请回调 [complete] 进行 分页计算
     */
    override fun load() {
        TODO("Not yet implemented")
    }

}