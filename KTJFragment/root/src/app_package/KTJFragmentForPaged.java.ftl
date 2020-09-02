package ${packageName}.${pageName?lower_case}.ui;

<#if needConstructor>
import android.os.Bundle;
</#if>
import com.johnson.core.fragment.BasePagedFragment;
import ${packageName}.${pageName?lower_case}.vm.${viewModelClass};
<#if dataTypeImport??>
import ${dataReference};
</#if>
<#if applicationPackage??>
import ${applicationPackage}.BR;
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.Fragment${pageName}Binding;
<#else>
import ${packageName}.BR;
import ${packageName}.R;
import ${packageName}.databinding.Fragment${pageName}Binding;
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

    <#if needConstructor>
	private static final String ARG_PARAM1 = "param1";

    private String mParam1;
    </#if>


    @Override
    protected int layoutId() {
        return R.layout.${layoutName};
    }

    @Override
    protected void init() {
        <#if needConstructor>
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
        }
        </#if>
        // 初始化操作
    }

    @Override
    protected int bindingVariable() {
        return BR.vm;
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


    <#if needConstructor>
    public static ${fragmentClass} newInstance(String param1) {
        ${fragmentClass} fragment = new ${fragmentClass}();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        fragment.setArguments(args);
        return fragment;
    }
    </#if>
}