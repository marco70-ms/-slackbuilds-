### Slackware 14.2

# iptables -N sshguard

# iptables -A INPUT -m multiport -p tcp --destination-ports 22 -j sshguard

or

# iptables -A INPUT -p tcp --dport 22 -j sshguard

# iptables-save > /etc/sysconfig/iptables

/etc/rc.d/rc.local

iptables-restore < /etc/sysconfig/iptables
# ip6tables-restore < /etc/sysconfig/ip6tables

## IPv6
# ip6tables -N sshguard
# ip6tables -A INPUT -m multiport -p tcp --destination-ports 22 -j sshguard
# ip6tables-save > /etc/sysconfig/ip6tables
# ip6tables-restore < /etc/sysconfig/ip6tables

## sshguard
if [ -x /etc/rc.d/rc.sshguard ]; then
   . /etc/rc.d/rc.sshguard start
fi
###

# sshguard -l /var/log/secure

or

# sshguard 1>/dev/null &

### My config:
/etc/sshguard.conf


# sshguard.conf -- SSHGuard configuration

# Options that are uncommented in this example are set to their default
# values. Options without defaults are commented out.

#### REQUIRED CONFIGURATION ####
# Full path to backend executable (required, no default)
BACKEND="/usr/libexec/sshg-fw-iptables"

# Space-separated list of log files to monitor. (optional, no default)
FILES="/var/log/messages /var/log/secure /var/log/maillog"

#### OPTIONS ####
# Block attackers when their cumulative attack score exceeds THRESHOLD.
# Most attacks have a score of 10. (optional, default 30)
THRESHOLD=10

# Block attackers for initially BLOCK_TIME seconds after exceeding THRESHOLD.
# Subsequent blocks increase by a factor of 1.5. (optional, default 120)
BLOCK_TIME=43200

# Remember potential attackers for up to DETECTION_TIME seconds before
# resetting their score. (optional, default 1800)
DETECTION_TIME=60480

# Size of IPv6 'subnet to block. Defaults to a single address, CIDR notation. (optional, default to 128)
IPV6_SUBNET=64

# Size of IPv4 subnet to block. Defaults to a single address, CIDR notation. (optional, default to 32)
IPV4_SUBNET=24

#### EXTRAS ####
# !! Warning: These features may not work correctly with sandboxing. !!

# Full path to PID file (optional, no default)
#PID_FILE=/run/sshguard.pid

# Colon-separated blacklist threshold and full path to blacklist file.
# (optional, no default)
BLACKLIST_FILE=10:/var/lib/sshguard/blacklist.db

# IP addresses listed in the WHITELIST_FILE are considered to be
# friendlies and will never be blocked.
WHITELIST_FILE=/etc/sshguard.whitelist

### Unbanning

If you ban yourself, you can wait to get unbanned automatically or use iptables or nftables to unban yourself.
iptables

First check if your IP is banned by sshguard:

# iptables --list sshguard --line-numbers --numeric

Then use the following command to unban, with the line-number as identified in the former command:

# iptables --delete sshguard line-number

You will also need to remove the IP address from /var/lib/sshguard/blacklist.db in order to make unbanning persistent. 

