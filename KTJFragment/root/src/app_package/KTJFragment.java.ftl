package ${packageName}.${pageName?lower_case}.ui;

<#if needConstructor>
import android.os.Bundle;
</#if>
import com.johnson.core.fragment.BaseFragment;


<#if generateViewModel>
import ${packageName}.${pageName?lower_case}.vm.${viewModelClass};
    <#if dataTypeImport??>
import ${dataReference};
    </#if>
    <#if applicationPackage??>
import ${applicationPackage}.BR;
    <#else>
import ${packageName}.BR;
    </#if>
<#else>
import com.johnson.core.vm.NoViewModel;
</#if>

<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.Fragment${pageName}Binding;
<#else>
import ${packageName}.R;
import ${packageName}.databinding.Fragment${pageName}Binding;
</#if>


/**
 * description: ${fragmentClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 * @see 	BaseFragment
 */
public class ${fragmentClass} extends BaseFragment<<#if generateViewModel>${viewModelClass}<#else>NoViewModel</#if>, ${dataType}, Fragment${pageName}Binding> {

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

    <#if generateViewModel>
    @Override
    protected void dataEvent(${dataType} data) {
        // 主数据回调
    }

    @Override
    protected int bindingVariable() {
        return BR.vm;
    }
    </#if>

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