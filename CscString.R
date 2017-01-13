# License

csc.lic<-"To further clarify the Creative Commons license related to the CIS Critical Security Controls content, you are authorized to copy and redistribute the content as a framework for use by you, within your organization and outside of your organization for non-commercial purposes only, provided that (i) appropriate credit is given to CIS, and (ii) a link to the license is provided.   Additionally, if you remix, transform or build upon the CIS Critical Security Controls, you may not distribute the modified materials. Users of the CIS Critical Security Controls framework are also required to refer to (http://www.cisecurity.org/critical-controls.cfm) when referring to the CIS Critical Security Controls in order to ensure that users are employing the most up to date guidance.  Commercial use of the CIS Critical Security Controls is subject to the prior approval of The Center for Internet Security."

# CSC Titles
csc1.0.t<-"Critical Security Control #1:\n Inventory of Authorized and Unauthorized Devices"
csc1.0.q<-"Critical Security Control #1: Inventory of Authorized and Unauthorized Devices"
csc2.0.t<-"Critical Security Control #2:\n Inventory of Authorized and Unauthorized Software"
csc2.0.q<-"Critical Security Control #2: Inventory of Authorized and Unauthorized Software"
csc3.0.t<-"Critical Security Control #3:\n Secure Configurations for Hardware and Software"
csc3.0.q<-"Critical Security Control #3: Secure Configurations for Hardware and Software"
csc4.0.t<-"Critical Security Control #4:\n Continuous Vulnerability Assessment and Remediation"
csc4.0.q<-"Critical Security Control #4: Continuous Vulnerability Assessment and Remediation"
csc5.0.t<-"Critical Security Control #5:\n Controlled Use of Administrative Privileges"
csc5.0.q<-"Critical Security Control #5: Controlled Use of Administrative Privileges"
csc6.0.t<-"Critical Security Control #6:\n Maintenance, Monitoring, and Analysis of Audit Logs"
csc6.0.q<-"Critical Security Control #6: Maintenance, Monitoring, and Analysis of Audit Logs"
csc7.0.t<-"Critical Security Control #7:\n Email and Web Browser Protections"
csc7.0.q<-"Critical Security Control #7: Email and Web Browser Protections"
csc8.0.t<-"Critical Security Control #8:\n Malware Defenses"
csc8.0.q<-"Critical Security Control #8: Malware Defenses"
csc9.0.t<-"Critical Security Control #9:\n Limitation and Control of Network Ports"
csc9.0.q<-"Critical Security Control #9: Limitation and Control of Network Ports"
csc10.0.t<-"Critical Security Control #10:\n Data Recovery Capability"
csc10.0.q<-"Critical Security Control #10: Data Recovery Capability"
csc11.0.t<-"Critical Security Control #11:\n Secure Configurations for Network Devices"
csc11.0.q<-"Critical Security Control #11: Secure Configurations for Network Devices"
csc12.0.t<-"Critical Security Control #12:\n Boundary Defense"
csc12.0.q<-"Critical Security Control #12: Boundary Defense"
csc13.0.t<-"Critical Security Control #13:\n Data Protection"
csc13.0.q<-"Critical Security Control #13: Data Protection"
csc14.0.t<-"Critical Security Control #14:\n Controlled Access Based on the Need to Know"
csc14.0.q<-"Critical Security Control #14: Controlled Access Based on the Need to Know"
csc15.0.t<-"Critical Security Control #15:\n Wireless Access Control"
csc15.0.q<-"Critical Security Control #15: Wireless Access Control"
csc16.0.t<-"Critical Security Control #16:\n Account Monitoring and Control"
csc16.0.q<-"Critical Security Control #16: Account Monitoring and Control"
csc17.0.t<-"Critical Security Control #17:\n Security Skills Assessment and Appropriate Training to Fill Gaps"
csc17.0.q<-"Critical Security Control #17: Security Skills Assessment and Appropriate Training to Fill Gaps"
csc18.0.t<-"Critical Security Control #18:\n Application Software Security"
csc18.0.q<-"Critical Security Control #18: Application Software Security"
csc19.0.t<-"Critical Security Control #19:\n Incident Response and Management"
csc19.0.q<-"Critical Security Control #19: Incident Response and Management"
csc20.0.t<-"Critical Security Control #20:\n Penetration Tests and Red Team Exercises"
csc20.0.q<-"Critical Security Control #20: Penetration Tests and Red Team Exercises"

# CSC 1.0
csc1.1<-"Deploy an automated asset inventory discovery tool and use it to build a preliminary inventory of systems connected to an organization’s public and private network(s). Both active tools that scan through IPv4 or IPv6 network address ranges and passive tools that identify hosts based on analyzing their traffic should be employed."
csc1.2<-"If the organization is dynamically assigning addresses using DHCP, then deploy dynamic host configuration protocol (DHCP) server logging, and use this information to improve the asset inventory and help detect unknown systems."
csc1.3<-"Ensure that all equipment acquisitions automatically update the inventory system as new, approved devices are connected to the network."
csc1.4<-"Maintain an asset inventory of all systems connected to the network and the network devices themselves, recording at least the network addresses, machine name(s), purpose of each system, an asset owner responsible for each device, and the department associated with each device. The inventory should include every system that has an Internet protocol (IP) address on the network, including but not limited to desktops, laptops, servers, network equipment (routers, switches, firewalls, etc.), printers, storage area networks, Voice Over-IP telephones, multi-homed addresses, virtual addresses, etc.  The asset inventory created must also include data on whether the device is a portable and/or personal device. Devices such as mobile phones, tablets, laptops, and other portable electronic devices that store or process data must be identified, regardless of whether they are attached to the organization’s network."
csc1.5<-"Deploy network level authentication via 802.1x to limit and control which devices can be connected to the network.  The 802.1x must be tied into the inventory data to determine authorized versus unauthorized systems."
csc1.6<-"Use client certificates to validate and authenticate systems prior to connecting to the private network."

csc1.x<-c(csc1.0.t, csc1.1, csc1.2, csc1.3, csc1.4, csc1.5, csc1.6)

# CSC 2.0
csc2.1<-"Devise a list of authorized software and version that is required in the enterprise for each type of system, including servers, workstations, and laptops of various kinds and uses.  This list should be monitored by file integrity checking tools to validate that the authorized software has not been modified."
csc2.2<-"Deploy application whitelisting technology that allows systems to run software only if it is included on the whitelist and prevents execution of all other software on the system. The whitelist may be very extensive (as is available from commercial whitelist vendors), so that users are not inconvenienced when using common software. Or, for some special-purpose systems (which require only a small number of programs to achieve their needed business functionality), the whitelist may be quite narrow."
csc2.3<-"Deploy software inventory tools throughout the organization covering each of the operating system types in use, including servers, workstations, and laptops. The software inventory system should track the version of the underlying operating system as well as the applications installed on it. The software inventory systems must be tied into the hardware asset inventory so all devices and associated software are tracked from a single location."
csc2.4<-"Virtual machines and/or air-gapped systems should be used to isolate and run applications that are required for business operations but based on higher risk should not be installed within a networked environment."

csc2.x<-c(csc2.0.t, csc2.1, csc2.2, csc2.3, csc2.4)

# CSC 3.0 
csc3.1<-"Establish standard secure configurations of your operating systems and software applications. Standardized images should represent hardened versions of the underlying operating system and the applications installed on the system. These images should be validated and refreshed on a regular basis to update their security configuration in light of recent vulnerabilities and attack vectors."
csc3.2<-"Follow strict configuration management, building a secure image that is used to build all new systems that are deployed in the enterprise.  Any existing system that becomes compromised should be re-imaged with the secure build. Regular updates or exceptions to this image should be integrated into the organization’s change management processes.  Images should be created for workstations, servers, and other system types used by the organization."
csc3.3<-"Store the master images on securely configured servers, validated with integrity checking tools capable of continuous inspection, and change management to ensure that only authorized changes to the images are possible. Alternatively, these master images can be stored in offline machines, air-gapped from the production network, with images copied via secure media to move them between the image storage servers and the production network."
csc3.4<-"Perform all remote administration of servers, workstation, network devices, and similar equipment over secure channels. Protocols such as telnet, VNC, RDP, or others that do not actively support strong encryption should only be used if they are performed over a secondary encryption channel, such as SSL, TLS or IPSEC."
csc3.5<-"Use file integrity checking tools to ensure that critical system files (including sensitive system and application executables, libraries, and configurations) have not been altered. The reporting system should: have the ability to account for routine and expected changes; highlight and alert on unusual or unexpected alterations; show the history of configuration changes over time and identify who made the change (including the original logged-in account in the event of a user ID switch, such as with the su or sudo command). These integrity checks should identify suspicious system alterations such as: owner and permissions changes to files or directories; the use of alternate data streams which could be used to hide malicious activities; and the introduction of extra files into key system areas (which could indicate malicious payloads left by attackers or additional files inappropriately added during batch distribution processes)."
csc3.6<-"Implement and test an automated configuration monitoring system that verifies all remotely testable secure configuration elements, and alerts when unauthorized changes occur. This includes detecting new listening ports, new administrative users, changes to group and local policy objects (where applicable), and new services running on a system. Whenever possible use tools compliant with the Security Content Automation Protocol (SCAP) in order to streamline reporting and integration."
csc3.7<-"Deploy system configuration management tools, such as Active Directory Group Policy Objects for Microsoft Windows systems or Puppet for UNIX systems that will automatically enforce and redeploy configuration settings to systems at regularly scheduled intervals. They should be capable of triggering redeployment of configuration settings on a scheduled, manual, or event-driven basis."

csc3.x<-c(csc3.0.t, csc3.1, csc3.2, csc3.3, csc3.4, csc3.5, csc3.6, csc3.7)

# CSC 4.0
csc4.1<-"Run automated vulnerability scanning tools against all systems on the network on a weekly or more frequent basis and deliver prioritized lists of the most critical vulnerabilities to each responsible system administrator along with risk scores that compare the effectiveness of system administrators and departments in reducing risk.  Use a SCAP-validated vulnerability scanner that looks for both code-based vulnerabilities (such as those described by Common Vulnerabilities and Exposures entries) and configuration-based vulnerabilities (as enumerated by the Common Configuration Enumeration Project)."
csc4.2<-"Correlate event logs with information from vulnerability scans to fulfill two goals. First, personnel should verify that the activity of the regular vulnerability scanning tools  is itself logged. Second, personnel should be able to correlate attack detection events with prior vulnerability scanning results to determine whether the given exploit was used against a target known to be vulnerable."
csc4.3<-"Perform vulnerability scanning in authenticated mode either with agents running locally on each end system to analyze the security configuration or with remote scanners that are given administrative rights on the system being tested. Use a dedicated account for authenticated vulnerability scans, which should not be used for any other administrative activities and should be tied to specific machines at specific IP addresses.  Ensure that only authorized employees have access to the vulnerability management user interface and that roles are applied to each user."
csc4.4<-"Subscribe to vulnerability intelligence services in order to stay aware of emerging exposures, and use the information gained from this subscription to update the organization’s vulnerability scanning activities on at least a monthly basis.  Alternatively, ensure that the vulnerability scanning tools you use are regularly updated with all relevant important security vulnerabilities."
csc4.5<-"Deploy automated patch management tools and software update tools for operating system and software/applications on all systems for which such tools are available and safe.  Patches should be applied to all systems, even systems that are properly air gapped."
csc4.6<-"Monitor logs associated with any scanning activity and associated administrator accounts to ensure that this activity is limited to the timeframes of legitimate scans."
csc4.7<-"Compare the results from back-to-back vulnerability scans to verify that vulnerabilities were addressed either by patching, implementing a compensating control, or documenting and accepting a reasonable business risk. Such acceptance of business risks for existing vulnerabilities should be periodically reviewed to determine if newer compensating controls or subsequent patches can address vulnerabilities that were previously accepted, or if conditions have changed, increasing the risk."
csc4.8<-"Establish a process to risk-rate vulnerabilities based on the exploitability and potential impact of the vulnerability, and segmented by appropriate groups of assets (example, DMZ servers, internal network servers, desktops, laptops). Apply patches for the riskiest vulnerabilities first.  A phased rollout can be used to minimize the impact to the organization. Establish expected patching timelines based on the risk rating level."

csc4.x<-c(csc4.0.t, csc4.1, csc4.2, csc4.3, csc4.4, csc4.5, csc4.6, csc4.7, csc4.8)

# CSC 5.0
csc5.1<-"Minimize administrative privileges and only use administrative accounts when they are required.  Implement focused auditing on the use of administrative privileged functions and monitor for anomalous behavior."
csc5.2<-"Use automated tools to inventory all administrative accounts and validate that each person with administrative privileges on desktops, laptops, and servers is authorized by a senior executive."
csc5.3<-"Before deploying any new devices in a networked environment, change all default passwords for applications, operating systems, routers, firewalls, wireless access points, and other systems to have values consistent with administration-level accounts."
csc5.4<-"Configure systems to issue a log entry and alert when an account is added to or removed from a domain administrators’ group, or when a new local administrator account is added on a system."
csc5.5<-"Configure systems to issue a log entry and alert on any unsuccessful login to an administrative account."
csc5.6<-"Use multifactor authentication for all administrative access, including domain administrative access.  Multi-factor authentication can include a variety of techniques, to include the use of smart cards, certificates, One Time Password (OTP) tokens, biometrics, or other similar authentication methods."
csc5.7<-"Where multi-factor authentication is not supported, user accounts shall be required to use long passwords on the system (longer than 14 characters)."
csc5.8<-"Administrators should be required to access a system using a fully logged and non-administrative account. Then, once logged on to the machine without administrative privileges, the administrator should transition to administrative privileges using tools such as Sudo on Linux/UNIX, RunAs on Windows, and other similar facilities for other types of systems."
csc5.9<-"Administrators shall use a dedicated machine for all administrative tasks or tasks requiring elevated access. This machine shall be isolated from the organization's primary network and not be allowed Internet access. This machine shall not be used for reading e-mail, composing documents, or surfing the Internet."

csc5.x<-c(csc5.0.t, csc5.1, csc5.2, csc5.3, csc5.4, csc5.5, csc5.6, csc5.7, csc5.8, csc5.9)

# CSC 6.0
csc6.1<-"Include at least two synchronized time sources from which all servers and network equipment retrieve time information on a regular basis so that timestamps in logs are consistent."
csc6.2<-"Validate audit log settings for each hardware device and the software installed on it, ensuring that logs include a date, timestamp, source addresses, destination addresses, and various other useful elements of each packet and/or transaction. Systems should record logs in a standardized format such as syslog entries or those outlined by the Common Event Expression initiative. If systems cannot generate logs in a standardized format, log normalization tools can be deployed to convert logs into such a format."
csc6.3<-"Ensure that all systems that store logs have adequate storage space for the logs generated on a regular basis, so that log files will not fill up between log rotation intervals.  The logs must be archived and digitally signed on a periodic basis."
csc6.4<-"Have security personnel and/or system administrators run biweekly reports that identify anomalies in logs. They should then actively review the anomalies, documenting their findings."
csc6.5<-"Configure network boundary devices, including firewalls, network-based IPS, and inbound and outbound proxies, to verbosely log all traffic (both allowed and blocked) arriving at the device."
csc6.6<-"Deploy a SIEM (Security Information and Event Management) or log analytic tools for log aggregation and consolidation from multiple machines and for log correlation and analysis.  Using the SIEM tool, system administrators and security personnel should devise profiles of common events from given systems so that they can tune detection to focus on unusual activity, avoid false positives, more rapidly identify anomalies, and prevent overwhelming analysts with insignificant alerts."

csc6.x<-c(csc6.0.t, csc6.1, csc6.2, csc6.3, csc6.4, csc6.5, csc6.6)

# CSC 7.0
csc7.1<-"Ensure that only fully supported web browsers and email clients are allowed to execute in the organization, ideally only using the latest version of the browsers provided by the vendor in order to take advantage of the latest security functions and fixes."
csc7.2<-"Uninstall or disable any unnecessary or unauthorized browser or email client plugins or add-on applications. Each plugin shall utilize application / URL whitelisting and only allow the use of the application for pre-approved domains."
csc7.3<-"Limit the use of unnecessary scripting languages in all web browsers and email clients. This includes the use of languages such as ActiveX and JavaScript on systems where it is unnecessary to support such capabilities."
csc7.4<-"Log all URL requests from each of the organization's systems, whether onsite or a mobile device, in order to identify potentially malicious activity and assist incident handlers with identifying potentially compromised systems."
csc7.5<-"Deploy two separate browser configurations to each system. One configuration should disable the use of all plugins, unnecessary scripting languages, and generally be configured with limited functionality and be used for general web browsing. The other configuration shall allow for more browser functionality but should only be used to access specific websites that require the use of such functionality."
csc7.6<-"The organization shall maintain and enforce network based URL filters that limit a system's ability to connect to websites not approved by the organization. The organization shall subscribe to URL categorization services to ensure that they are up-to-date with the most recent website category definitions available. Uncategorized sites shall be blocked by default. This filtering shall be enforced for each of the organization's systems, whether they are physically at an organization's facilities or not."
csc7.7<-"To lower the chance of spoofed e-mail messages, implement the Sender Policy Framework (SPF) by deploying SPF records in DNS and enabling receiver-side verification in mail servers."
csc7.8<-"Scan and block all e-mail attachments entering the organization's e-mail gateway if they contain malicious code or file types that are unnecessary for the organization's business. This scanning should be done before the e-mail is placed in the user's inbox. This includes e-mail content filtering and web content filtering."

csc7.x<-c(csc7.0.t, csc7.1, csc7.2, csc7.3, csc7.4, csc7.5, csc7.6, csc7.7, csc7.8)

# CSC 8.0
csc8.1<-"Employ automated tools to continuously monitor workstations, servers, and mobile devices with anti-virus, anti-spyware, personal firewalls, and host-based IPS functionality. All malware detection events should be sent to enterprise anti-malware administration tools and event log servers."
csc8.2<-"Employ anti-malware software that offers a centralized infrastructure that compiles information on file reputations or have administrators manually push updates to all machines. After applying an update, automated systems should verify that each system has received its signature update."
csc8.3<-"Limit use of external devices to those with an approved, documented business need. Monitor for use and attempted use of external devices. Configure laptops, workstations, and servers so that they will not auto-run content from removable media, like USB tokens (i.e., “thumb drives”), USB hard drives, CDs/DVDs, FireWire devices, external serial advanced technology attachment devices, and mounted network shares. Configure systems so that they automatically conduct an anti-malware scan of removable media when inserted."
csc8.4<-"Enable anti-exploitation features such as Data Execution Prevention (DEP), Address Space Layout Randomization (ASLR), virtualization/containerization, etc. For increased protection, deploy capabilities such as Enhanced Mitigation Experience Toolkit (EMET) that can be configured to apply these protections to a broader set of applications and executables."
csc8.5<-"Use network-based anti-malware tools to identify executables in all network traffic and use techniques other than signature-based detection to identify and filter out malicious content before it arrives at the endpoint."
csc8.6<-"Enable domain name system (DNS) query logging to detect hostname lookup for known malicious C2 domains."

csc8.x<-c(csc8.0.t, csc8.1, csc8.2, csc8.3, csc8.4, csc8.5, csc8.6)

# CSC 9.0
csc9.1<-"Ensure that only ports, protocols, and services with validated business needs are running on each system."
csc9.2<-"Apply host-based firewalls or port filtering tools on end systems, with a default-deny rule that drops all traffic except those services and ports that are explicitly allowed."
csc9.3<-"Perform automated port scans on a regular basis against all key servers and compared to a known effective baseline.  If a change that is not listed on the organization’s approved baseline is discovered, an alert should be generated and reviewed."
csc9.4<-"Verify any server that is visible from the Internet or an untrusted network, and if it is not required for business purposes, move it to an internal VLAN and give it a private address."
csc9.5<-"Operate critical services on separate physical or logical host machines, such as DNS, file, mail, web, and database servers."
csc9.6<-"Place application firewalls in front of any critical servers to verify and validate the traffic going to the server.  Any unauthorized services or traffic should be blocked and an alert generated."

csc9.x<-c(csc9.0.t, csc9.1, csc9.2, csc9.3, csc9.4, csc9.5, csc9.6)

# CSC 10.0
csc10.1<-"Ensure that each system is automatically backed up on at least a weekly basis, and more often for systems storing sensitive information. To help ensure the ability to rapidly restore a system from backup, the operating system, application software, and data on a machine should each be included in the overall backup procedure. These three components of a system do not have to be included in the same backup file or use the same backup software. There should be multiple backups over time, so that in the event of malware infection, restoration can be from a version that is believed to predate the original infection. All backup policies should be compliant with any regulatory or official requirements."
csc10.2<-"Test data on backup media on a regular basis by performing a data restoration process to ensure that the backup is properly working."
csc10.3<-"Ensure that backups are properly protected via physical security or encryption when they are stored, as well as when they are moved across the network.  This includes remote backups and cloud services."
csc10.4<-"Ensure that key systems have at least one backup destination that is not continuously addressable through operating system calls.  This will mitigate the risk of attacks like CryptoLocker which seek to encrypt or damage data on all addressable data shares, including backup destinations."

csc10.x<-c(csc10.0.t, csc10.1, csc10.2, csc10.3, csc10.4)

# CSC 11.0
csc11.1<-"Compare firewall, router, and switch configuration against standard secure configurations defined for each type of network device in use in the organization. The security configuration of such devices should be documented, reviewed, and approved by an organization change control board. Any deviations from the standard configuration or updates to the standard configuration should be documented and approved in a change control system."
csc11.2<-"All new configuration rules beyond a baseline-hardened configuration that allow traffic to flow through network security devices, such as firewalls and network-based IPS, should be documented and recorded in a configuration management system, with a specific business reason for each change, a specific individual’s name responsible for that business need, and an expected duration of the need."
csc11.3<-"Use automated tools to verify standard device configurations and detect changes. All alterations to such files should be logged and automatically reported to security personnel."
csc11.4<-"Manage network devices using two-factor authentication and encrypted sessions."
csc11.5<-"Install the latest stable version of any security-related updates on all network devices."
csc11.6<-"Network engineers shall use a dedicated machine for all administrative tasks or tasks requiring elevated access. This machine shall be isolated from the organization's primary network and not be allowed Internet access. This machine shall not be used for reading e-mail, composing documents, or surfing the Internet."
csc11.7<-"Manage the network infrastructure across network connections that are separated from the business use of that network, relying on separate VLANs or, preferably, on entirely different physical connectivity for management sessions for network devices."

csc11.x<-c(csc11.0.t, csc11.1, csc11.2, csc11.3, csc11.4, csc11.5, csc11.6, csc11.7)

# CSC 12.0
csc12.1<-"Deny communications with (or limit data flow to) known malicious IP addresses (black lists), or limit access only to trusted sites (whitelists). Tests can be periodically carried out by sending packets from bogon source IP addresses (non-routable or otherwise unused IP addresses) into the network to verify that they are not transmitted through network perimeters. Lists of bogon addresses are publicly available on the Internet from various sources, and indicate a series of IP addresses that should not be used for legitimate traffic traversing the Internet."
csc12.2<-"On DMZ networks, configure monitoring systems (which may be built in to the IDS sensors or deployed as a separate technology) to record at least packet header information, and preferably full packet header and payloads of the traffic destined for or passing through the network border.  This traffic should be sent to a properly configured Security Information Event Management (SIEM) or log analytics system so that events can be correlated from all devices on the network."
csc12.3<-"Deploy network-based IDS sensors on Internet and extranet DMZ systems and networks that look for unusual attack mechanisms and detect compromise of these systems. These network-based IDS sensors may detect attacks through the use of signatures, network behavior analysis, or other mechanisms to analyze traffic."
csc12.4<-"Network-based IPS devices should be deployed to complement IDS by blocking known bad signatures or the behavior of potential attacks.  As attacks become automated, methods such as IDS typically delay the amount of time it takes for someone to react to an attack.  A properly configured network-based IPS can provide automation to block bad traffic. When evaluating network-based IPS products, include those using techniques other than signature-based detection (such as virtual machine or sandbox-based approaches) for consideration."
csc12.5<-"Design and implement network perimeters so that all outgoing network traffic to the Internet must pass through at least one application layer filtering proxy server. The proxy should support decrypting network traffic, logging individual TCP sessions, blocking specific URLs, domain names, and IP addresses to implement a black list, and applying whitelists of allowed sites that can be accessed through the proxy while blocking all other sites.  Organizations should force outbound traffic to the Internet through an authenticated proxy server on the enterprise perimeter."
csc12.6<-"Require all remote login access (including VPN, dial-up, and other forms of access that allow login to internal systems) to use two-factor authentication."
csc12.7<-"All enterprise devices remotely logging into the internal network should be managed by the enterprise, with remote control of their configuration, installed software, and patch levels. For third-party devices (e.g., subcontractors/vendors), publish minimum security standards for access to the enterprise network and perform a security scan before allowing access."
csc12.8<-"Periodically scan for back-channel connections to the Internet that bypass the DMZ, including unauthorized VPN connections and dual-homed hosts connected to the enterprise network and to other networks via wireless, dial-up modems, or other mechanisms."
csc12.9<-"Deploy NetFlow collection and analysis to DMZ network flows to detect anomalous activity."
csc12.10<-"To help identify covert channels exfiltrating data through a firewall, configure the built-in firewall session tracking mechanisms included in many commercial firewalls to identify TCP sessions that last an unusually long time for the given organization and firewall device, alerting personnel about the source and destination addresses associated with these long sessions."

csc12.x<-c(csc12.0.t, csc12.1, csc12.2, csc12.3, csc12.4, csc12.5, csc12.6, csc12.7, csc12.8, csc12.9, csc12.10)

# CSC 13.0
csc13.1<-"Perform an assessment of data to identify sensitive information that requires the application of encryption and integrity controls"
csc13.2<-"Deploy approved hard drive encryption software to mobile devices and systems that hold sensitive data."
csc13.3<-"Deploy an automated tool on network perimeters that monitors for sensitive information (e.g., personally identifiable information), keywords, and other document characteristics to discover unauthorized attempts to exfiltrate data across network boundaries and block such transfers while alerting information security personnel."
csc13.4<-"Conduct periodic scans of server machines using automated tools to determine whether sensitive data (e.g., personally identifiable information, health, credit card, or classified information) is present on the system in clear text. These tools, which search for patterns that indicate the presence of sensitive information, can help identify if a business or technical process is leaving behind or otherwise leaking sensitive information."
csc13.5<-"If there is no business need for supporting such devices, configure systems so that they will not write data to USB tokens or USB hard drives. If such devices are required, enterprise software should be used that can configure systems to allow only specific USB devices (based on serial number or other unique property) to be accessed, and that can automatically encrypt all data placed on such devices. An inventory of all authorized devices must be maintained."
csc13.6<-"Use network-based DLP solutions to monitor and control the flow of data within the network. Any anomalies that exceed the normal traffic patterns should be noted and appropriate action taken to address them."
csc13.7<-"Monitor all traffic leaving the organization and detect any unauthorized use of encryption. Attackers often use an encrypted channel to bypass network security devices. Therefore it is essential that organizations be able to detect rogue connections, terminate the connection, and remediate the infected system."
csc13.8<-"Block access to known file transfer and e-mail exfiltration websites."
csc13.9<-"Use host-based data loss prevention (DLP) to enforce ACLs even when data is copied off a server.  In most organizations, access to the data is controlled by ACLs that are implemented on the server.  Once the data have been copied to a desktop system, the ACLs are no longer enforced and the users can send the data to whomever they want."

csc13.x<-c(csc13.0.t, csc13.1, csc13.2, csc13.3, csc13.4, csc13.5, csc13.6, csc13.7, csc13.8, csc13.9)

# CSC 14.0
csc14.1<-"Segment the network based on the label or classification level of the information stored on the servers. Locate all sensitive information on separated VLANS with firewall filtering to ensure that only authorized individuals are only able to communicate with systems necessary to fulfill their specific responsibilities."
csc14.2<-"All communication of sensitive information over less-trusted networks should be encrypted. Whenever information flows over a network with a lower trust level, the information should be encrypted."
csc14.3<-"All network switches will enable Private Virtual Local Area Networks (VLANs) for segmented workstation networks to limit the ability of devices on a network to directly communicate with other devices on the subnet and limit an attackers ability to laterally move to compromise neighboring systems."
csc14.4<-"All information stored on systems shall be protected with file system, network share, claims, application, or database specific access control lists. These controls will enforce the principal that only authorized individuals should have access to the information based on their need to access the information as a part of their responsibilities."
csc14.5<-"Sensitive information stored on systems shall be encrypted at rest and require a secondary authentication mechanism, not integrated into the operating system, in order to access the information."
csc14.6<-"Enforce detailed audit logging for access to nonpublic data and special authentication for sensitive data."
csc14.7<-"Archived data sets or systems not regularly accessed by the organization shall be removed from the organization's network. These systems shall only be used as stand alone systems (disconnected from the network) by the business unit needing to occasionally use the system or completely virtualized and powered off until needed."

csc14.x<-c(csc14.0.t, csc14.1, csc14.2, csc14.3, csc14.4, csc14.5, csc14.6, csc14.7)

# CSC 15.0
csc15.1<-"Ensure that each wireless device connected to the network matches an authorized configuration and security profile, with a documented owner of the connection and a defined business need. Organizations should deny access to those wireless devices that do not have such a configuration and profile."
csc15.2<-"Configure network vulnerability scanning tools to detect wireless access points connected to the wired network. Identified devices should be reconciled against a list of authorized wireless access points. Unauthorized (i.e., rogue) access points should be deactivated."
csc15.3<-"Use wireless intrusion detection systems (WIDS) to identify rogue wireless devices and detect attack attempts and successful compromises. In addition to WIDS, all wireless traffic should be monitored by WIDS as traffic passes into the wired network."
csc15.4<-"Where a specific business need for wireless access has been identified, configure wireless access on client machines to allow access only to authorized wireless networks. For devices that do not have an essential wireless business purpose, disable wireless access in the hardware configuration (basic input/output system or extensible firmware interface)."
csc15.5<-"Ensure that all wireless traffic leverages at least Advanced Encryption Standard (AES) encryption used with at least Wi-Fi Protected Access 2 (WPA2) protection."
csc15.6<-"Ensure that wireless networks use authentication protocols such as Extensible Authentication Protocol-Transport Layer Security (EAP/TLS), which provide credential protection and mutual authentication."
csc15.7<-"Disable peer-to-peer wireless network capabilities on wireless clients."
csc15.8<-"Disable wireless peripheral access of devices (such as Bluetooth), unless such access is required for a documented business need."
csc15.9<-"Create separate virtual local area networks (VLANs) for BYOD systems or other untrusted devices. Internet access from this VLAN should go through at least the same border as corporate traffic. Enterprise access from this VLAN should be treated as untrusted and filtered and audited accordingly."

csc15.x<-c(csc15.0.t, csc15.1, csc15.2, csc15.3, csc15.4, csc15.5, csc15.6, csc15.7, csc15.8, csc15.9)

# CSC 16.0
csc16.1<-"Review all system accounts and disable any account that cannot be associated with a business process and owner."
csc16.2<-"Ensure that all accounts have an expiration date that is monitored and enforced."
csc16.3<-"Establish and follow a process for revoking system access by disabling accounts immediately upon termination of an employee or contractor. Disabling instead of deleting accounts allows preservation of audit trails."
csc16.4<-"Regularly monitor the use of all accounts, automatically logging off users after a standard period of inactivity."
csc16.5<-"Configure screen locks on systems to limit access to unattended workstations."
csc16.6<-"Monitor account usage to determine dormant accounts, notifying the user or user’s manager. Disable such accounts if not needed, or document and monitor exceptions (e.g., vendor maintenance accounts needed for system recovery or continuity operations). Require that managers match active employees and contractors with each account belonging to their managed staff. Security or system administrators should then disable accounts that are not assigned to valid workforce members."
csc16.7<-"Use and configure account lockouts such that after a set number of failed login attempts the account is locked for a standard period of time."
csc16.8<-"Monitor attempts to access deactivated accounts through audit logging."
csc16.9<-"Configure access for all accounts through a centralized point of authentication, for example Active Directory or LDAP.  Configure network and security devices for centralized authentication as well."
csc16.10<-"Profile each user’s typical account usage by determining normal time-of-day access and access duration. Reports should be generated that indicate users who have logged in during unusual hours or have exceeded their normal login duration. This includes flagging the use of the user’s credentials from a computer other than computers on which the user generally works."
csc16.11<-"Require multi-factor authentication for all user accounts that have access to sensitive data or systems. Multi-factor authentication can be achieved using smart cards, certificates, One Time Password (OTP) tokens, or biometrics."
csc16.12<-"Where multi-factor authentication is not supported, user accounts shall be required to use long passwords on the system (longer than 14 characters)."
csc16.13<-"Ensure that all account usernames and authentication credentials are transmitted across networks using encrypted channels."
csc16.14<-"Verify that all authentication files are encrypted or hashed and that these files cannot be accessed without root or administrator privileges.  Audit all access to password files in the system."

csc16.x<-c(csc16.0.t, csc16.1, csc16.2, csc16.3, csc16.4, csc16.5, csc16.6, csc16.7, csc16.8, csc16.9, csc16.10, csc16.11, csc16.12, csc16.13, csc16.14)

# CSC 17.0
csc17.1<-"Perform gap analysis to see which skills employees need and which behaviors employees are not adhering to, using this information to build a baseline training and awareness roadmap for all employees."
csc17.2<-"Deliver training to fill the skills gap. If possible, use more senior staff to deliver the training. A second option is to have outside teachers provide training onsite so the examples used will be directly relevant. If you have small numbers of people to train, use training conferences or online training to fill the gaps."
csc17.3<-"Implement an security awareness program that (1) focuses only on the methods commonly used in intrusions that can be blocked through individual action, (2) is delivered in short online modules convenient for employees (3) is updated frequently (at least annually) to represent the latest attack techniques, (4) is mandated for completion by all employees at least annually, and (5) is reliably monitored for employee completion."
csc17.4<-"Validate and improve awareness levels through periodic tests to see whether employees will click on a link from suspicious e-mail or provide sensitive information on the telephone without following appropriate procedures for authenticating a caller; targeted training should be provided to those who fall victim to the exercise."
csc17.5<-"Use security skills assessments for each of the mission-critical roles to identify skills gaps. Use hands-on, real-world examples to measure mastery. If you do not have such assessments, use one of the available online competitions that simulate real-world scenarios for each of the identified jobs in order to measure skills mastery."

csc17.x<-c(csc17.0.t, csc17.1, csc17.2, csc17.3, csc17.4, csc17.5)

# CSC 18.0
csc18.1<-"For all acquired application software, check that the version you are using is still supported by the vendor. If not, update to the most current version and install all relevant patches and vendor security recommendations."
csc18.2<-"Protect web applications by deploying web application firewalls (WAFs) that inspect all traffic flowing to the web application for common web application attacks, including but not limited to cross-site scripting, SQL injection, command injection, and directory traversal attacks. For applications that are not web-based, specific application firewalls should be deployed if such tools are available for the given application type.  If the traffic is encrypted, the device should either sit behind the encryption or be capable of decrypting the traffic prior to analysis.  If neither option is appropriate, a host-based web application firewall should be deployed."
csc18.3<-"For in-house developed software, ensure that explicit error checking is performed and documented for all input, including for size, data type, and acceptable ranges or formats."
csc18.4<-"Test in-house-developed and third-party-procured web applications for common security weaknesses using automated remote web application scanners prior to deployment, whenever updates are made to the application, and on a regular recurring basis. In particular, input validation and output encoding routines of application software should be reviewed and tested."
csc18.5<-"Do not display system error messages to end-users (output sanitization)."
csc18.6<-"Maintain separate environments for production and nonproduction systems. Developers should not typically have unmonitored access to production environments."
csc18.7<-"For applications that rely on a database, use standard hardening configuration templates. All systems that are part of critical business processes should also be tested."
csc18.8<-"Ensure that all software development personnel receive training in writing secure code for their specific development environment."
csc18.9<-"For in-house developed applications, ensure that development artifacts (sample data and scripts; unused libraries, components, debug code; or tools) are not included in the deployed software, or accessible in the production environment."

csc18.x<-c(csc18.0.t, csc18.1, csc18.2, csc18.3, csc18.4, csc18.5, csc18.6, csc18.7, csc18.8, csc18.9)

# CSC 19.0
csc19.1<-"Ensure that there are written incident response procedures that include a definition of personnel roles for handling incidents. The procedures should define the phases of incident handling."
csc19.2<-"Assign job titles and duties for handling computer and network incidents to specific individuals."
csc19.3<-"Define management personnel who will support the incident handling process by acting in key decision-making roles."
csc19.4<-"Devise organization-wide standards for the time required for system administrators and other personnel to report anomalous events to the incident handling team, the mechanisms for such reporting, and the kind of information that should be included in the incident notification. This reporting should also include notifying the appropriate Community Emergency Response Team in accordance with all legal or regulatory requirements for involving that organization in computer incidents."
csc19.5<-"Assemble and maintain information on third-party contact information to be used to report a security incident (e.g., maintain an e-mail address of security@organization.com or have a web page http://organization.com/security)."
csc19.6<-"Publish information for all personnel, including employees and contractors, regarding reporting computer anomalies and incidents to the incident handling team. Such information should be included in routine employee awareness activities."
csc19.7<-"Conduct periodic incident scenario sessions for personnel associated with the incident handling team to ensure that they understand current threats and risks, as well as their responsibilities in supporting the incident handling team."

csc19.x<-c(csc19.0.t, csc19.1, csc19.2, csc19.3, csc19.4, csc19.5, csc19.6, csc19.7)

# CSC 20.0
csc20.1<-"Conduct regular external and internal penetration tests to identify vulnerabilities and attack vectors that can be used to exploit enterprise systems successfully. Penetration testing should occur from outside the network perimeter (i.e., the Internet or wireless frequencies around an organization) as well as from within its boundaries (i.e., on the internal network) to simulate both outsider and insider attacks."
csc20.2<-"Any user or system accounts used to perform penetration testing should be controlled and monitored to make sure they are only being used for legitimate purposes, and are removed or restored to normal function after testing is over."
csc20.3<-"Perform periodic Red Team exercises to test organizational readiness to identify and stop attacks or to respond quickly and effectively."
csc20.4<-"Include tests for the presence of unprotected system information and artifacts that would be useful to attackers, including network diagrams, configuration files, older penetration test reports, e-mails or documents containing passwords or other information critical to system operation."
csc20.5<-"Plan clear goals of the penetration test itself with blended attacks in mind, identifying the goal machine or target asset.  Many APT-style attacks deploy multiple vectors—often social engineering combined with web or network exploitation.  Red Team manual or automated testing that captures pivoted and multi-vector attacks offers a more realistic assessment of security posture and risk to critical assets."
csc20.6<-"Use vulnerability scanning and penetration testing tools in concert.  The results of vulnerability scanning assessments should be used as a starting point to guide and focus penetration testing efforts."
csc20.7<-"Wherever possible, ensure that Red Teams results are documented using open, machine-readable standards (e.g., SCAP).  Devise a scoring method for determining the results of Red Team exercises so that results can be compared over time."
csc20.8<-"Create a test bed that mimics a production environment for specific penetration tests and Red Team attacks against elements that are not typically tested in production, such as attacks against supervisory control and data acquisition and other control systems."

csc20.x<-c(csc20.0.t, csc20.1, csc20.2, csc20.3, csc20.4, csc20.5, csc20.6, csc20.7, csc20.8)

#HiDent

csc.all<-c("1.1","1.2","1.3","1.4","1.5","1.6",
					 "2.1","2.2","2.3","2.4",
					 "3.1","3.2","3.3","3.4","3.5","3.6","3.7",
					 "4.1","4.2","4.3","4.4","4.5","4.6","4.7","4.8",
					 "5.1","5.2","5.3","5.4","5.5","5.6","5.7","5.8","5.9",
					 "6.1","6.2","6.3","6.4","6.5","6.6",
					 "7.1","7.2","7.3","7.4","7.5","7.6","7.7","7.8",
					 "8.1","8.2","8.3","8.4","8.5","8.6",
					 "9.1","9.2","9.3","9.4","9.5","9.6",
					 "10.1","10.2","10.3","10.4",
					 "11.1","11.2","11.3","11.4","11.5","11.6","11.7",
					 "12.1","12.2","12.3","12.4","12.5","12.6","12.7","12.8","12.9","12.10",
					 "13.1","13.2","13.3","13.4","13.5","13.6","13.7","13.8","13.9",
					 "14.1","14.2","14.3","14.4","14.5","14.6","14.7",
					 "15.1","15.2","15.3","15.4","15.5","15.6","15.7","15.8","15.9",
					 "16.1","16.2","16.3","16.4","16.5","16.6","16.7","16.8","16.9","16.10","16.11","16.12","16.13","16.14",
					 "17.1","17.2","17.3","17.4","17.5",
					 "18.1","18.2","18.3","18.4","18.5","18.6","18.7","18.8","18.9",
					 "19.1","19.2","19.3","19.4","19.5","19.6","19.7",
					 "20.1","20.2","20.3","20.4","20.5","20.6","20.7","20.8")
					 
csc.Hident<-c("5.1","5.2","5.3","5.4","5.5","5.6","5.7","5.8","5.9",
							"14.1","14.2","14.3","14.4","14.5","14.6","14.7",
							"16.1","16.2","16.3","16.4","16.5","16.6","16.7","16.8","16.9","16.10","16.11","16.12","16.13","16.14")

csc.Nids<-c("1.1","1.2","1.3","1.4","1.5","1.6",
						"3.1","3.2","3.3","3.4","3.5","3.6","3.7",
						"4.1","4.2","4.3","4.4","4.5","4.6","4.7","4.8")

csc.Hids<-c("1.1","1.2","1.3","1.4","1.5","1.6",
						"2.1","2.2","2.3","2.4",
						"3.1","3.2","3.3","3.4","3.5","3.6","3.7",
						"4.1","4.2","4.3","4.4","4.5","4.6","4.7","4.8",
						"6.1","6.2","6.3","6.4","6.5","6.6",
						"7.1","7.2","7.3","7.4","7.5","7.6","7.7","7.8",
						"8.1","8.2","8.3","8.4","8.5","8.6")

csc.Program<-c("17.1","17.2","17.3","17.4","17.5",
							 "19.1","19.2","19.3","19.4","19.5","19.6","19.7",
							 "20.1","20.2","20.3","20.4","20.5","20.6","20.7","20.8")

csc.Others<-c("12.1","12.2","12.3","12.4","12.5","12.6","12.7","12.8","12.9","12.10",
							"15.1","15.2","15.3","15.4","15.5","15.6","15.7","15.8","15.9",
							"18.1","18.2","18.3","18.4","18.5","18.6","18.7","18.8","18.9")

csc.drbcp<-c("13.1","13.2","13.3","13.4","13.5","13.6","13.7","13.8","13.9")