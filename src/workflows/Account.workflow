<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>wen_fjjwe</fullName>
        <description>wen f</description>
        <protected>false</protected>
        <recipients>
            <recipient>approvalprocess123@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SalesNewCustomerEmail</template>
    </alerts>
    <rules>
        <fullName>check</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Active__c</field>
            <operation>equals</operation>
            <value>No</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>check1</fullName>
        <actions>
            <name>wen_fjjwe</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.number_of_record_by_future__c</field>
            <operation>greaterOrEqual</operation>
            <value>100</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
