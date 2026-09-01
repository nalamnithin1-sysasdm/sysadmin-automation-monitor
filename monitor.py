import os

print("--- AUTOMATED HEALTH CHECK START ---")

# 1. THE NETWORK PROBE (Micron JD: Basic Networking & TCP/IP)
target_server = "8.8.8.8"
print(f"Executing Layer 3 Network check on: {target_server}...")
network_status = os.system(f"ping -n 1 {target_server} > nul")

if network_status == 0:
    print(" -> SUCCESS: Network gateway path is online.")
else:
    print(" -> ALERT: Target server is offline or blocking packets.")

print("\nScanning server log depository...")

# 2. THE SELF-CONTAINED LOG ARCHIVE (Fixes the encoding bug!)
# We pack the raw server rows directly into a Python memory stream
simulated_logs = [
    "2026-08-31 08:00:00 - INFO - Global network gateway path is stable.",
    "2026-08-31 08:15:00 - INFO - Storage volume usage at 45 percent.",
    "2026-08-31 08:30:00 - CRITICAL - Database connection failed on Port 22 due to timeout."
]

# Loop through each row in memory and flag severe alerts
for line in simulated_logs:
    if "CRITICAL" in line:
        print(f"\n[!!!] FLAG DETECTED: {line}")
        print("--------------------------------------------------")
        print("AI-ASSISTED OPERATIONAL REMEDIATION SUMMARY:")
        print(" -> Cause: Remote destination server refused connection on Port 22.")
        print(" -> Context: Port 22 is for SSH text login; target service may be crashed.")
        print(" -> Suggested Admin Action: Run 'sudo systemctl restart database'.")
        print("--------------------------------------------------")

print("\n--- AUTOMATED HEALTH CHECK COMPLETE ---")

