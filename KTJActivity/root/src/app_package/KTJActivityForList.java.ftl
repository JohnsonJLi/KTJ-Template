package ${packageName}.${pageName?lower_case}.ui;

import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.johnson.core.activity.BaseListActivity;
import ${packageName}.${pageName?lower_case}.vm.${viewModelClass};
<#if dataTypeImport??>
import ${dataReference};
</#if>
<#if applicationPackage??>
import ${applicationPackage}.BR;
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.Activity${pageName}Binding;
<#else>
import ${packageName}.BR;
import ${packageName}.R;
import ${packageName}.databinding.Activity${pageName}Binding;
</#if>

import org.jetbrains.annotations.NotNull;


/**
 * description: ${activityClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 * @see 	BaseListActivity
 */
public class ${activityClass} extends BaseListActivity<${viewModelClass}, ${dataType}, Activity${pageName}Binding> {
	
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
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

}