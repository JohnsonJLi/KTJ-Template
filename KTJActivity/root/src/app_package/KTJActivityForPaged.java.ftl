package ${packageName}.${pageName?lower_case}.ui;

import android.os.Bundle;

import com.johnson.core.activity.BasePagedActivity;
import ${packageName}.${pageName?lower_case}.vm.${viewModelClass};
<#if dataTypeImport??>
import ${dataReference};
</#if>
<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.Activity${pageName}Binding;
<#else>
import ${packageName}.R;
import ${packageName}.databinding.Activity${pageName}Binding;
</#if>

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.List;

/**
 * description: ${activityClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 * @see 	BasePagedActivity
 */
public class ${activityClass} extends BasePagedActivity<${viewModelClass}, ${dataType}, Activity${pageName}Binding> {
	
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
    }

	@Override
    protected void newData(@Nullable List<${dataType}> list) {
        // TODO("设置数据 使用时请修改 List<T> 类型")
    }

    @Override
    protected void addData(@NotNull List<${dataType}> list) {
        // TODO("添加数据 使用时请修改 List<T> 类型")
    }

    @Override
    protected void hideLoading() {
        // TODO("隐藏 Loading / 隐藏下拉刷新")
    }

    @Override
    protected void loadMoreComplete() {
        // TODO("加载更多 完成")
    }

    @Override
    protected void loadMoreFailed() {
        // TODO("加载更多 错误")
    }

    @Override
    protected void loadMoreEnd() {
        // TODO("没有更多数据")
    }
}