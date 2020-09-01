package ${packageName}.${pageName?lower_case}.ui;

import android.os.Bundle;

import com.johnson.core.activity.BaseActivity;
import ${packageName}.${pageName?lower_case}.vm.${viewModelClass};

<#if applicationPackage??>
import ${applicationPackage}.R;
import ${applicationPackage}.databinding.Activity${pageName}Binding;
<#else>
import ${packageName}.R;
import ${packageName}.databinding.Activity${pageName}Binding;
</#if>

/**
 * description: ${activityClass}
 * 
 * @author 	
 * @date 	${.now?string("yyyy/MM/dd")}
 * @see 	BaseActivity
 */
public class ${activityClass} extends BaseActivity<${viewModelClass}, Object, Activity${pageName}Binding> {
	
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
    }

}