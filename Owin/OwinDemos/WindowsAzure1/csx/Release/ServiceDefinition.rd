﻿<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="WindowsAzure1" generation="1" functional="0" release="0" Id="972c8523-83ff-48e1-9a37-28a33e128ea9" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="WindowsAzure1Group" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WorkerRole1:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/WindowsAzure1/WindowsAzure1Group/LB:WorkerRole1:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WorkerRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/WindowsAzure1/WindowsAzure1Group/MapWorkerRole1Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WorkerRole1:Endpoint1">
          <toPorts>
            <inPortMoniker name="/WindowsAzure1/WindowsAzure1Group/WorkerRole1/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWorkerRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/WindowsAzure1/WindowsAzure1Group/WorkerRole1Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WorkerRole1" generation="1" functional="0" release="0" software="C:\Users\nicolocodev\Desktop\OwinDemos\WindowsAzure1\csx\Release\roles\WorkerRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="768" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WorkerRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WorkerRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/WindowsAzure1/WindowsAzure1Group/WorkerRole1Instances" />
            <sCSPolicyUpdateDomainMoniker name="/WindowsAzure1/WindowsAzure1Group/WorkerRole1UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/WindowsAzure1/WindowsAzure1Group/WorkerRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WorkerRole1UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WorkerRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WorkerRole1Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="61c6f602-2b3c-4592-bcd0-7574b9837741" ref="Microsoft.RedDog.Contract\ServiceContract\WindowsAzure1Contract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="10dd66d7-d460-4200-be8a-a0bf7ed4f3a6" ref="Microsoft.RedDog.Contract\Interface\WorkerRole1:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/WindowsAzure1/WindowsAzure1Group/WorkerRole1:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>