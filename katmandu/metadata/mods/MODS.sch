<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns uri="http://www.loc.gov/mods/v3" prefix="mods"/>
    <ns uri="http://www.w3.org/1999/xlink" prefix="xlink"/>
    <pattern name="accessCondition: must be present">
        <rule context="mods:mods">
            <assert test="mods:accessCondition">Your record must include accessCondition with @type</assert>
        </rule>
    </pattern>
    <pattern name="accessCondition: must have @type">
        <rule context="mods:accessCondition">
            <assert test="@type">accessCondition must include @type</assert>
        </rule>
    </pattern>
    <pattern name="classification: should not be present">
        <rule context="mods:classification">
            <assert test="*">Do not use classification.</assert>
        </rule>
    </pattern>
    <pattern name="genre: must have an authority attribute">
        <rule context="mods:genre">
            <assert test="@authority">You must use @authority for the genre element</assert>
        </rule>
    </pattern>
    <pattern name="genre: @authority must use approved value">
        <rule context="mods:genre[@authority]">
            <assert test="@authority = 'aat' or @authority='rbgenr' or @authority='gmgpc' or @authority='rbbin' or @authority='rbpap' or @authority='rbpri' or @authority='rbprov' or @authority='rbpub' or @authority='rbtyp' or @authority='local' or @authority='lcsh'">genre @authority source is not on approved list.</assert>
        </rule>
    </pattern>
    <pattern name="identifier: @type must be present">
        <rule context="mods:identifier">
            <assert test="@type">@type is required under identifier</assert>
        </rule>
    </pattern>
    <pattern name="language: languageTerm must be present">
        <rule context="mods:mods">
            <assert test="mods:language/mods:languageTerm[@type]">languageTerm is required under language; @type is required </assert>
        </rule>
    </pattern>
    <pattern name="languageTerm: @type must be 'code'">
        <rule context="mods:languageTerm">
            <assert test="@type = 'code'">@type should be "code" and the value should be in code form</assert>
        </rule>
    </pattern>
    <pattern name="languageTerm: @authority must be 'iso639-2b'">
        <rule context="mods:languageTerm">
            <assert test="@authority = 'iso639-2b'">@authority should be "iso639-2b" and the value should be in code form</assert>
        </rule>
    </pattern>
    <pattern name="location: physicalLocation must be present">
        <rule context="mods:location">
            <assert test="mods:physicalLocation">physicalLocation is required under location</assert>
        </rule>
    </pattern>
    <pattern name="location: physicalLocation must have @type 'code' and 'text'">
        <rule context="mods:location">
            <assert test="mods:physicalLocation[@type = 'code']">A physicalLocation element must be given with @type=code</assert>
            <assert test="mods:physicalLocation[@type = 'text']">A physicalLocation element must be given with @type=text</assert>
        </rule>
    </pattern>
    <pattern name="location: physicalLocation @authority=marcorg must be present">
        <rule context="mods:location/mods:physicalLocation[@type='code']">
            <assert test="@authority='marcorg'">The physicalLocation coded field must also have @authority=marcorg</assert>
        </rule>
    </pattern>
    <pattern name="mods: There should be only one mods section">
        <rule context="/">
            <report test="count(//mods:mods) > 1">There should only be one mods section per record.</report>
        </rule>
    </pattern>
    <pattern name="modsCollection: abstract is required">
        <rule context="mods:modsCollection">
            <assert test="mods:mods/mods:abstract">Collection-level records require an abstract.</assert>
        </rule>
    </pattern>
    <pattern name="name: @type and @authority must be present">
        <rule context="mods:name">
            <assert test="@type">@type is required under name</assert>
            <assert test="@authority">@authority is required under name</assert>
        </rule>
    </pattern>
    <pattern name="name: if @type=personal, namePart must have @type">
        <rule context="mods:name[@type='personal']/mods:namePart">
            <assert test="@type">Personal names must include @type on namePart</assert>
        </rule>
    </pattern>
    <pattern name="name: role must be present; roleTerm must have @code and @authority with set values">
        <rule context="mods:name">
            <assert test="mods:role">role must be present for every name</assert>
            <assert test="mods:role/mods:roleTerm[@authority='marcrelator']">roleTerm is required with @authority and value marcrelator</assert>
            <assert test="mods:role/mods:roleTerm[@type='code']">roleTerm is required with @type and value code</assert>
        </rule>
    </pattern>
    <pattern name="originInfo: must be present">
        <rule context="mods:mods">
            <assert test="mods:originInfo">Your record must include originInfo</assert>
            <assert test="mods:originInfo/*[@keyDate]">One date in originInfo must include @keyDate</assert>
        </rule>
    </pattern>
    <pattern name="originInfo: placeTerm if present must contain @type with set value">
        <rule context="mods:originInfo/mods:place">
            <assert test="mods:placeTerm[@type='text']">placeTerm must include @type with value text</assert>
        </rule>
    </pattern>
    <pattern name="originInfo: dateOther if present must contain @type">
        <rule context="mods:originInfo/mods:dateOther">
            <assert test="@type">dateOther must include @type from local list</assert>
        </rule>
    </pattern>
    <pattern name="physicalDescription: must be present">
        <rule context="mods:mods">
            <assert test="mods:physicalDescription">Your record must include physicalDescription</assert>
        </rule>
    </pattern>
    <pattern name="physicalDescription: extent must be present">
        <rule context="mods:physicalDescription">
            <assert test="mods:extent">physicalDescription must include extent</assert>
        </rule>
    </pattern>
    <pattern name="recordInfo: must be present">
        <rule context="mods:mods">
            <assert test="mods:recordInfo">Your record must include recordInformation</assert>
        </rule>
    </pattern>
    <pattern name="relatedItem: if present, must have @type with set list of values">
        <rule context="mods:relatedItem">
            <assert test="@type='constituent' or @type='host' or @type='isReferencedBy' or @type='series'">relatedItem must include @type with one of these values: constituent, host, isReferencedBy, series</assert>
        </rule>
    </pattern>
    <pattern name="subject: is present, must have @authority with set list of values">
        <rule context="mods:subject">
            <assert test="@authority='lcsh' or @authority='aat' or @authority='local'">subject @authority with one of these values: lcsh, aat, or local</assert>
        </rule>
    </pattern>
    <pattern name="titleInfo: must be present">
        <rule context="mods:mods">
            <assert test="mods:titleInfo">Your record must include titleInfo</assert>
        </rule>
    </pattern>
    <pattern name="typeOfResource: must be present">
        <rule context="mods:mods">
            <assert test="mods:typeOfResource">Your record must include typeOfResource</assert>
        </rule>
    </pattern>
    <pattern name="xlink:role=scriptToggle: must also include @script, @lang, @xlink:title">
        <rule context="*[@xlink:role='scriptToggle']">
            <assert test="@script">if including scriptToggle, must include @script</assert>
            <assert test="@lang">if including scriptToggle, must include @lang</assert>
            <assert test="@xlink:title">if including scriptToggle, must include @xlink:title</assert>
        </rule>
    </pattern>
    <!--    
        <pattern name="">
        <rule context="">
        <assert test=""></assert>
        </rule>
        </pattern> 
        
    -->
</schema>
