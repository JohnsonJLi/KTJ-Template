<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

    <instantiate from="root/res/layout/fragment_ktj.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

	<@kt.addAllKotlinDependencies />
	<#if pageMode == "default" || !generateViewModel>
		<instantiate from="root/src/app_package/KTJFragment.${ktOrJavaExt}.ftl"
				to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/ui/${fragmentClass}.${ktOrJavaExt}" />
	<#elseif pageMode == "list">
		<instantiate from="root/src/app_package/KTJFragmentForList.${ktOrJavaExt}.ftl"
				to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/ui/${fragmentClass}.${ktOrJavaExt}" />
	<#else>
		<instantiate from="root/src/app_package/KTJFragmentForPaged.${ktOrJavaExt}.ftl"
				to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/ui/${fragmentClass}.${ktOrJavaExt}" />
	</#if>

	<#if generateViewModel>
        <#if pageMode == "default">
            <instantiate from="root/src/app_package/KTJViewModel.${ktOrJavaExt}.ftl"
                    to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/vm/${viewModelClass}.${ktOrJavaExt}" />
        <#else>
            <instantiate from="root/src/app_package/KTJViewModelForPaged.${ktOrJavaExt}.ftl"
                    to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/vm/${viewModelClass}.${ktOrJavaExt}" />
        </#if>
	</#if>
					   
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/vm/${viewModelClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/ui/${fragmentClass}.${ktOrJavaExt}" />
</recipe>
