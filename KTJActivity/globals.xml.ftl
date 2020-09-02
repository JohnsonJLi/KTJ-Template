<?xml version="1.0"?>
<globals>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="isLauncher" type="boolean" value="${isNewModule?string}" />

        <#if dataReference != "default">
            <#if dataReference?contains(".")>
    <global id="dataType" type="string" value="${dataReference?substring(dataReference?last_index_of(".")+1)}"/>
    <global id="dataTypeImport" type="boolean" value="true"/>
            <#else>
    <global id="dataType" type="string" value="${dataReference}"/>
            </#if>
        <#elseif ((language!'Java')?string == 'Kotlin')>
    <global id="dataType" type="string" value="Any"/>
        <#else>
    <global id="dataType" type="string" value="Object"/>
        </#if>
    <#include "../common/common_globals.xml.ftl" />
</globals>
