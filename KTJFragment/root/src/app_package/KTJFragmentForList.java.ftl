package ${packageName}.${pageName?lower_case}.ui;

<#if needConstructor>
import android.os.Bundle;
</#if>
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.johnson.core.fragment.BaseListFragment;
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


/**
 * description: ${fragmentClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 * @see 	BaseListFragment
 */
public class ${fragmentClass} extends BaseListFragment<${viewModelClass}, ${dataType}, Fragment${pageName}Binding> {

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

    @NotNull
    @Override
    protected BaseQuickAdapter recyclerViewAdapter() {
        return null;
    }

    @NotNull
    @Override
    protected RecyclerView recyclerView() {
        return null;
    }

    @Override
    protected int bindingVariable() {
        return BR.vm;
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