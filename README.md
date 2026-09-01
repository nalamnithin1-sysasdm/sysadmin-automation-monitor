# 🚀 Data Center Infrastructure Automation Portfolio

A collection of lightweight, production-grade system administration scripts designed to automate telemetry monitoring, security compliance, and infrastructure configuration management.

---

## 🛠️ Project 1: Infrastructure Security & Configuration Playbook

An Infrastructure-as-Code utility engineered to automate local user workspace provisioning, enforce access controls, and configure host firewall security rules dynamically.

### 🩺 Playbook Terminal Execution Output
```text
--- INITIALIZING MICRON INFRASTRUCTURE BASELINE CONFIGURATION ---
Step 1: Provisioning secure employee directory at C:\Micron_Mfg_Engineer...
 -> SUCCESS: Directory created safely.
Step 2: Enforcing strict folder access controls (Equivalent to chmod 600)...
 -> SUCCESS: Inherited outside access revoked. Folder locked down.
Step 3: Auditing local firewall configuration rules for Port 443...
 -> SUCCESS: Inbound Rule created. Port 443 is now open for traffic.
--- MICRON INFRASTRUCTURE BASELINE DEPLOYMENT COMPLETE ---
```

### 🧠 Idempotent Verification Stream (Second Run Analysis)
```text
--- INITIALIZING MICRON INFRASTRUCTURE BASELINE CONFIGURATION ---
Step 1: Provisioning secure employee directory at C:\Micron_Mfg_Engineer...
 -> IDEMPOTENCY STATUS: Directory already exists. Skipping creation step.
Step 2: Enforcing strict folder access controls (Equivalent to chmod 600)...
 -> SUCCESS: Inherited outside access revoked. Folder locked down.
Step 3: Auditing local firewall configuration rules for Port 443...
 -> IDEMPOTENCY STATUS: Firewall rule already compliant. Skipping update.
--- MICRON INFRASTRUCTURE BASELINE DEPLOYMENT COMPLETE ---
```

---

## 🩺 Project 2: Server Health Monitor & Log Parsing Tool

An automated diagnostics utility written in Python to simulate 24/7 server state monitoring, network layer routing tests, and automated error summaries.

### 📊 Monitor Terminal Execution Output
```text
--- MICRON AUTOMATED HEALTH CHECK START ---
Executing Layer 3 Network check on: 8.8.8.8...
 -> SUCCESS: Network gateway path is online.

Scanning server log depository...

[!!!] FLAG DETECTED: 2026-08-31 08:30:00 - CRITICAL - Database connection failed on Port 22 due to timeout.
--------------------------------------------------
AI-ASSISTED OPERATIONAL REMEDIATION SUMMARY:
 -> Cause: Remote destination server refused connection on Port 22.
 -> Context: Port 22 is for SSH text login; target service may be crashed.
 -> Suggested Admin Action: Run 'sudo systemctl restart database'.
--------------------------------------------------

--- MICRON AUTOMATED HEALTH CHECK COMPLETE ---
```

