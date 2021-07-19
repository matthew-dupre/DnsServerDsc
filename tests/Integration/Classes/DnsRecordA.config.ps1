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
        DnsRecordA_CreateStarRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '*'
            IPv4Address = '192.168.50.10'
        }
        DnsRecordA_ModifyStarRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '*'
            IPv4Address = '192.168.50.10'
            DnsServer   = 'localhost'
            TimeToLive  = '05:00:00'
            Ensure      = 'Present'
        }
        DnsRecordA_DeleteStarRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '*'
            IPv4Address = '192.168.50.10'
            Ensure      = 'Absent'
        }
        DnsRecordA_CreateNakedRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '@'
            IPv4Address = '192.168.50.10'
        }
        DnsRecordA_ModifyNakedRecord_Config = @{
            ZoneName    = $zoneName
            Name        = '@'
            IPv4Address = '192.168.50.10'
            DnsServer   = 'localhost'
            TimeToLive  = '05:00:00'
            Ensure      = 'Present'
        }
        DnsRecordA_DeleteNakedRecord_Config = @{
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
configuration DnsRecordA_CreateNakedRecord_Config
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
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_CreateNakedRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_CreateNakedRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_CreateNakedRecord_Config.IPv4Address
        }
    }
}

<#
    .SYNOPSIS
        Modifies an existing 'Naked' A record
#>
configuration DnsRecordA_ModifyNakedRecord_Config
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
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_ModifyNakedRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_ModifyNakedRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_ModifyNakedRecord_Config.IPv4Address
            DnsServer   = $ConfigurationData.NonNodeData.DnsRecordA_ModifyNakedRecord_Config.DnsServer
            TimeToLive  = $ConfigurationData.NonNodeData.DnsRecordA_ModifyNakedRecord_Config.TimeToLive
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_ModifyNakedRecord_Config.Ensure
        }
    }
}

<#
    .SYNOPSIS
        Deletes an existing Naked A record
#>
configuration DnsRecordA_DeleteNakedRecord_Config
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
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_DeleteNakedRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_DeleteNakedRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_DeleteNakedRecord_Config.IPv4Address
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_DeleteNakedRecord_Config.Ensure
        }
    }
}

<#
    .SYNOPSIS
        Create a 'Star' A record
#>
configuration DnsRecordA_CreateStarRecord_Config
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
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_CreateStarRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_CreateStarRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_CreateStarRecord_Config.IPv4Address
        }
    }
}

<#
    .SYNOPSIS
        Modifies an existing 'Naked' A record
#>
configuration DnsRecordA_ModifyStarRecord_Config
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
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_ModifyStarRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_ModifyStarRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_ModifyStarRecord_Config.IPv4Address
            DnsServer   = $ConfigurationData.NonNodeData.DnsRecordA_ModifyStarRecord_Config.DnsServer
            TimeToLive  = $ConfigurationData.NonNodeData.DnsRecordA_ModifyStarRecord_Config.TimeToLive
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_ModifyStarRecord_Config.Ensure
        }
    }
}

<#
    .SYNOPSIS
        Deletes an existing Naked A record
#>
configuration DnsRecordA_DeleteStarRecord_Config
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
            ZoneName    = $ConfigurationData.NonNodeData.DnsRecordA_DeleteStarRecord_Config.ZoneName
            Name        = $ConfigurationData.NonNodeData.DnsRecordA_DeleteStarRecord_Config.Name
            IPv4Address = $ConfigurationData.NonNodeData.DnsRecordA_DeleteStarRecord_Config.IPv4Address
            Ensure      = $ConfigurationData.NonNodeData.DnsRecordA_DeleteStarRecord_Config.Ensure
        }
    }
}
