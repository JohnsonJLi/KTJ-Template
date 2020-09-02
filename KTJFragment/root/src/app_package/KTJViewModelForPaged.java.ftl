package ${packageName}.${pageName?lower_case}.vm;

import com.johnson.core.vm.BaseListViewModel;
<#if dataTypeImport??>
import ${dataReference};
</#if>

/**
 * description: ${viewModelClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 * @see 	BaseListViewModel
 */
public class ${viewModelClass} extends BaseListViewModel<${dataType}> {

    /**
     * 在此函数实现 数据加载
     * 页码 {@link #getPage} 每页数量 {@link #getPageSize}
     * 请求成功请回调 {@link #complete} 进行 分页计算
     */
    @Override
    protected void load() {
        // TODO("Not yet implemented")
    }

}