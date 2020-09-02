<?xml version="1.0"?>
<globals>
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
    <#include "root://activities/common/common_globals.xml.ftl" />
</globals>
