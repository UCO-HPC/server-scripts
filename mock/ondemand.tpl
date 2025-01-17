config_opts['description'] += " + OnDemand"

# Install packages for Open OnDemand
config_opts['chroot_additional_packages'] += """
    nmap-ncat turbovnc python3-websockify xfce4-session xfwm4 
    xfdesktop libGL xfce4-settings
"""

config_opts['dnf.conf'] += """

[TurboVNC]
name=TurboVNC official RPMs
baseurl=https://packagecloud.io/dcommander/turbovnc/rpm_any/rpm_any/$basearch
repo_gpgcheck=1
gpgcheck=1
gpgkey=https://packagecloud.io/dcommander/turbovnc/gpgkey
       https://raw.githubusercontent.com/TurboVNC/repo/main/VGL-GPG-KEY
       https://raw.githubusercontent.com/TurboVNC/repo/main/VGL-GPG-KEY-1024
enabled=1
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt

[TurboVNC-source]
name=TurboVNC official SRPMs
baseurl=https://packagecloud.io/dcommander/turbovnc/rpm_any/rpm_any/SRPMS
repo_gpgcheck=1
gpgcheck=1
gpgkey=https://packagecloud.io/dcommander/turbovnc/gpgkey
       https://raw.githubusercontent.com/TurboVNC/repo/main/VGL-GPG-KEY
       https://raw.githubusercontent.com/TurboVNC/repo/main/VGL-GPG-KEY-1024
enabled=1
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt

"""
