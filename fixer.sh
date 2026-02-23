scripts/config --disable SECURITY_SELINUX 
scripts/config --disable SECURITY_SELINUX_BOOTPARAM
scripts/config --disable SECURITY_SELINUX_DISABLE

# Disable signing that expects certs/rhel.pem
scripts/config --disable MODULE_SIG scripts/config --disable SYSTEM_TRUSTED_KEYS scripts/config --disable 
SYSTEM_REVOCATION_KEYS
# Some configs store the path strings; set them empty just in case
scripts/config --set-str SYSTEM_TRUSTED_KEYS ""
scripts/config --set-str SYSTEM_REVOCATION_KEYS ""
