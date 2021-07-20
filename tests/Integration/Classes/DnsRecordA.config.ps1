$zoneName = "A.test"

$ConfigurationData = @{
    AllNodes    = , @{
        NodeName        = 'localhost'
        CertificateFile = $Null
    }
    NonNodeData = @{
        DnsRecordA_CreateRecord_Config = @{
            ZoneName    = $zoneName
            Name        = 'www'
            IPv4Address = '192.168.50.10'
        }
        DnsRecordA_ModifyRecord_Config = @{
            ZoneName    = $zoneName
            Name        = 'www'
            IPv4Address = '192.168.50.10'
            DnsServer   = 'localhost'
            TimeToLive  = '05:00:00'
            Ensure      = 'Present'
        }
        DnsRecordA_DeleteRecord_Config = @{
            ZoneName    = $zoneName
            Name        = 'www'
            IPv4Address = '192.168.50.10'
            Ensure      = 'Absent'
        }
        DnsRecordA_CreateWildcardRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '*'
            IPv4Address = '192.168.50.10'
        }
        DnsRecordA_ModifyWildcardRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '*'
            IPv4Address = '192.168.50.10'
            DnsServer   = 'localhost'
            TimeToLive  = '05:00:00'
            Ensure      = 'Present'
        }
        DnsRecordA_DeleteWildcardRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '*'
            IPv4Address = '192.168.50.10'
            Ensure      = 'Absent'
        }
        DnsRecordA_CreateRootRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '@'
            IPv4Address = '192.168.50.10'
        }
        DnsRecordA_ModifyRootRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '@'
            IPv4Address = '192.168.50.10'
            DnsServer   = 'localhost'
            TimeToLive  = '05:00:00'
            Ensure      = 'Present'
        }
        DnsRecordA_DeleteRootRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '@'
            IPv4Address = '192.168.50.10'
            Ensure      = 'Absent'
        }
    }
}

<#
    .SYNOPSIS
        Create an A record
#>
configuration DnsRecordA_CreateRecord_Config
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    node $AllNodes.NodeName
    {
        DnsServerPrimaryZone "Zone $zoneName"
        {
            Name = $zoneName
        }

        DnsRecordA 'Integration_Test'
        {
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_CreateRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_CreateRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_CreateRecord_Config.IPv4Address
        }
    }
}

<#
    .SYNOPSIS
        Modifies an existing A record
#>
configuration DnsRecordA_ModifyRecord_Config
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    node $AllNodes.NodeName
    {
        DnsServerPrimaryZone "Zone $zoneName"
        {
            Name = $zoneName
        }

        DnsRecordA 'Integration_Test'
        {
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRecord_Config.IPv4Address
            DnsServer   = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRecord_Config.DnsServer
            TimeToLive  = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRecord_Config.TimeToLive
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRecord_Config.Ensure
        }
    }
}

<#
    .SYNOPSIS
        Deletes an existing A record
#>
configuration DnsRecordA_DeleteRecord_Config
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    node $AllNodes.NodeName
    {
        DnsServerPrimaryZone "Zone $zoneName"
        {
            Name = $zoneName
        }

        DnsRecordA 'Integration_Test'
        {
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_DeleteRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_DeleteRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_DeleteRecord_Config.IPv4Address
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_DeleteRecord_Config.Ensure
        }
    }
}

<#
    .SYNOPSIS
        Create a 'Naked' A record
#>
configuration DnsRecordA_CreateRootRecord_Config
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    node $AllNodes.NodeName
    {
        DnsServerPrimaryZone "Zone $zoneName"
        {
            Name = $zoneName
        }

        DnsRecordA 'Integration_Test'
        {
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_CreateRootRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_CreateRootRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_CreateRootRecord_Config.IPv4Address
        }
    }
}

<#
    .SYNOPSIS
        Modifies an existing 'Naked' A record
#>
configuration DnsRecordA_ModifyRootRecord_Config
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    node $AllNodes.NodeName
    {
        DnsServerPrimaryZone "Zone $zoneName"
        {
            Name = $zoneName
        }

        DnsRecordA 'Integration_Test'
        {
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRootRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRootRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRootRecord_Config.IPv4Address
            DnsServer   = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRootRecord_Config.DnsServer
            TimeToLive  = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRootRecord_Config.TimeToLive
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_ModifyRootRecord_Config.Ensure
        }
    }
}

<#
    .SYNOPSIS
        Deletes an existing Naked A record
#>
configuration DnsRecordA_DeleteRootRecord_Config
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    node $AllNodes.NodeName
    {
        DnsServerPrimaryZone "Zone $zoneName"
        {
            Name = $zoneName
        }

        DnsRecordA 'Integration_Test'
        {
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_DeleteRootRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_DeleteRootRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_DeleteRootRecord_Config.IPv4Address
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_DeleteRootRecord_Config.Ensure
        }
    }
}

<#
    .SYNOPSIS
        Create a 'Star' A record
#>
configuration DnsRecordA_CreateWildcardRecord_Config
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    node $AllNodes.NodeName
    {
        DnsServerPrimaryZone "Zone $zoneName"
        {
            Name = $zoneName
        }

        DnsRecordA 'Integration_Test'
        {
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_CreateWildcardRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_CreateWildcardRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_CreateWildcardRecord_Config.IPv4Address
        }
    }
}

<#
    .SYNOPSIS
        Modifies an existing 'Naked' A record
#>
configuration DnsRecordA_ModifyWildcardRecord_Config
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    node $AllNodes.NodeName
    {
        DnsServerPrimaryZone "Zone $zoneName"
        {
            Name = $zoneName
        }

        DnsRecordA 'Integration_Test'
        {
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_ModifyWildcardRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_ModifyWildcardRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_ModifyWildcardRecord_Config.IPv4Address
            DnsServer   = $ConfigurationData.NonNodeData.DnsRecordA_ModifyWildcardRecord_Config.DnsServer
            TimeToLive  = $ConfigurationData.NonNodeData.DnsRecordA_ModifyWildcardRecord_Config.TimeToLive
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_ModifyWildcardRecord_Config.Ensure
        }
    }
}

<#
    .SYNOPSIS
        Deletes an existing Naked A record
#>
configuration DnsRecordA_DeleteWildcardRecord_Config
{
    Import-DscResource -ModuleName 'DnsServerDsc'

    node $AllNodes.NodeName
    {
        DnsServerPrimaryZone "Zone $zoneName"
        {
            Name = $zoneName
        }

        DnsRecordA 'Integration_Test'
        {
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_DeleteWildcardRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_DeleteWildcardRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_DeleteWildcardRecord_Config.IPv4Address
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_DeleteWildcardRecord_Config.Ensure
        }
    }
}
