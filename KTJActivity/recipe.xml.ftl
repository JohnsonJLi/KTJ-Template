<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>

    <#include "../common/recipe_theme.xml.ftl" />
    <#include "../common/recipe_manifest_strings.xml.ftl" />

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/res/layout/activity_ktj.xml.ftl"
                to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

	<@kt.addAllKotlinDependencies />
	<#if pageMode == "default">
		<instantiate from="root/src/app_package/KTJActivity.${ktOrJavaExt}.ftl"
				to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/ui/${activityClass}.${ktOrJavaExt}" />
	<#elseif pageMode == "list">
		<instantiate from="root/src/app_package/KTJActivityForList.${ktOrJavaExt}.ftl"
				to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/ui/${activityClass}.${ktOrJavaExt}" />
	<#else>
		<instantiate from="root/src/app_package/KTJActivityForPaged.${ktOrJavaExt}.ftl"
				to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/ui/${activityClass}.${ktOrJavaExt}" />
	</#if>
	
	<#if pageMode == "default">
		<instantiate from="root/src/app_package/KTJViewModel.${ktOrJavaExt}.ftl"
                to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/vm/${viewModelClass}.${ktOrJavaExt}" />
	<#else>
		<instantiate from="root/src/app_package/KTJViewModelForPaged.${ktOrJavaExt}.ftl"
                to="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/vm/${viewModelClass}.${ktOrJavaExt}" />
	</#if>
					   
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/vm/${viewModelClass}.${ktOrJavaExt}" />
    <open file="${escapeXmlAttribute(srcOut)}/${pageName?lower_case}/ui/${activityClass}.${ktOrJavaExt}" />
</recipe>
