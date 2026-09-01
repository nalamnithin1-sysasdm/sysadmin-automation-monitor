Write-Host "--- INITIALIZING MICRON INFRASTRUCTURE BASELINE CONFIGURATION ---" -ForegroundColor Cyan

# 1. Simulate user creation by building a dedicated secure directory
$TargetDirectory = "C:\Micron_Mfg_Engineer"
Write-Host "Step 1: Provisioning secure employee directory at $TargetDirectory..."

if (!(Test-Path -Path $TargetDirectory)) {
    New-Item -Path $TargetDirectory -ItemType Directory | Out-Null
    Write-Host " -> SUCCESS: Directory created safely." -ForegroundColor Green
} else {
    Write-Host " -> IDEMPOTENCY STATUS: Directory already exists. Skipping creation step." -ForegroundColor Yellow
}

# 2. Simulate strict permissions by locking the folder down to just your user account
Write-Host "Step 2: Enforcing strict folder access controls (Equivalent to chmod 600)..."
$Acl = Get-Acl -Path $TargetDirectory
$Acl.SetAccessRuleProtection($true, $false) # Removes inherited outside permissions
Set-Acl -Path $TargetDirectory -AclObject $Acl
Write-Host " -> SUCCESS: Inherited outside access revoked. Folder locked down." -ForegroundColor Green

# 3. Simulate opening Port 443 in the system firewall
Write-Host "Step 3: Auditing local firewall configuration rules for Port 443..."
$RuleName = "Micron_Secure_Telemetry_443"
$RuleExists = Get-NetFirewallRule -Name $RuleName -ErrorAction SilentlyContinue

if (!$RuleExists) {
    New-NetFirewallRule -DisplayName $RuleName -Name $RuleName -Direction Inbound -Protocol TCP -LocalPort 443 -Action Allow | Out-Null
    Write-Host " -> SUCCESS: Inbound Rule created. Port 443 is now open for traffic." -ForegroundColor Green
} else {
    Write-Host " -> IDEMPOTENCY STATUS: Firewall rule already compliant. Skipping update." -ForegroundColor Yellow
}

Write-Host "--- MICRON INFRASTRUCTURE BASELINE DEPLOYMENT COMPLETE ---" -ForegroundColor Cyan
