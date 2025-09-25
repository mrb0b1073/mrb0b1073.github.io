+++
title = "Starting Point"
date = 2025-09-25T10:00:00+02:00
author = "mrb0b1073"
draft = false
weight = 2
+++

## Introduction
If you’re reading this and you’ve never touched a terminal, written a script, or used Linux, you’re in the right place. This is intended to be short, practical roadmap to get started in ethical hacking — what hackers do, the mindset behind it, the technical foundations you should build, and the platforms and some tools/personal recommendations that will actually teach you. We could call this a beginner starting point for ethical hacking from my point of view.

In cybersecurity there are boardly two complementary roles: **Blue Team** and **Red Team**. Blue Teams focus on defense, monitoring, incident response, hardening systems and keeping services secures, while Red Teams simulate attackers to find weaknesses and prove what an adversary could do. Ethical hacking aligns closely with Red Team operations, but cybersecurity is highly transversal across IT. There are many specialities or areas, such as cloud security, appsec, pentesting, forensics, governance, risk management, malware analysis, etc. Every topic could deserve his own post, so let's keep it simple and focus on ethical hacking.

## Hacker philosophy
Let's start with the idea of what is exactly a *hacker*. A hacker is someone who explores systems to understand how they work, finds creative ways to make or fix things, and solves technical problems. Historically the word describes curiosity, craft, and a drive to improve systems — not criminality. It is important to make the distinction between *hacker* and *cracker*, also called cybercriminal. A hacker explores, builds, discloses responsibly and works to improve security. They works in authorized environments or labs. On the other hand, a cracker breaks into systems for theft, vandalism, or other illicit gain.

Here you can find the most popularized ideas often summarized as *the hacker ethic*:
- **Curisosity first**: Learn by exploring and tinkering. 
- **Freedom of information**: All knowledge should be shared to help progress. This fits properly with the idea of *open source*.
- **Mistrust of needless authority**: Centralized control sometimes blocks innovation. It is always good to question anything, specially common assumptions.
- **Meritocracy**: Skills, craft and results matter more than titles.
- **Craftsmanship & elegance**: Technical beauty matters. Build clean, clever and efficient solutions.
- **Responsability & ethics**: Use your skills to build, fix, educate and defend, not to harm.

## Core fundamentals
Assumming you want to init yourself in hacking, you should first build competence across three basic pillars.

### Operating Systems
You should learn as much as possible about Linux and Windows. Specially Linux, all the tools you will be using are meant to be used in a Linux environment. Skill with *shell* is required, learn basic commands and how to interact with the OS using the terminal. Research about processes, file permissions, package management and logs. A large proportion of web servers around the world run on Linux, although Windows is also widely used. Windows knowledge is really valuable too, considering active directory is strongly used in corporate environments.

### **Networking**
You have to understand how computers communicate each other. Understand basic networking concepts, IP adresses, subnetting, proxies, find out how internet works. Study some protocols such as TCP/IP, HTTP, DNS or SSH. This could sound confusing for beginners, but this step is not optional! Study different client/server models and how services expose attack surfaces.

### **Programming & scripting**
Is this completely required? Maybe *not* for completely beginners. Does it help? Absolutely *yes*. Understanding how web apps or any type of application works makes things much easier. You can imagine different entry points to exploit if you understand how systems are designed. Also writing scripts in *bash* or *python* makes you more productive through automation.

## Ethical Hacking foundations
Once you feel confident with these 3 pillars, you can go to the next step. You can study about different topics and areas. For example, binary exploiting, web pentesting, mobile pentesting, wireless hacking, etc. You should start picking a focus, in this post we focus on web pentesting, as is beginner friendly. Also web applications are the bread and butter in companies nowadays.

Key concepts to study:
- **CIA Triad**: CIA refers to *Confidentiality*, *Integrity* and *Availability*. This three concepts are key in information security, and describe properties we want to ensure in our systems and information.
- **Web Security basics, OWASP**: Study the [OWASP Top 10](https://owasp.org/www-project-top-ten/), which summarizes most frequent web security risks.
- **Authentication and session control**: Understand the concepts of *Authentication* and *Authorization*, research about how session is handled in web apps, cookies, JWT tokens, etc.
- **Input validation & injection attacks**: Learn about *SQL Injection*, *Cross-Site Scripting* (XSS), *Code Injection*, *SSTI*, and every injection type.
- **Secure development lifecycle**: Find out how to implement security controls in code. This can be more related to Blue Team, but as Red Teamer is important to understand.
- **Firewall evasion**: What a *firewall* is and some techniques/methods to bypass.
- **Some cryptography**: Understand what a *chiper* and a *hash* is, how information is encrypted to prevent access from 3rd parties. Focusing on web, read about TLS protocol.

There are much more topics you can research and learn, but this could be a nice starting point.

## Tools and platforms to learn
Now you have an idea of *what* to study, let's see *how* to start in practical terms. 

Some platforms I personally recommend:
- [**OverTheWire**](https://overthewire.org/wargames/): Here you can find some *CTFs* (Capture The Flag) which are funny to play and also really instructive. *Bandit* games are a must for completely begginers, as you will explore some linux and bash concepts which are basic to continue. The games are leveled by difficulty, in their web you can get all the information about how to play, only a terminal and SSH is required. This helps building your foundation in Linux OS.
- [**HackTheBox**](https://www.hackthebox.com/): Nº 1 platform in cybersecurity. Has a lot of resources to learn all this core fundamentals, and also red team / blue team security topics. It is focused on *labs* where you can test your skills hacking different *boxes* but if you really want to learn is worth to invest time and money in the *academy*. I have to say the level here is high, specially if you try to hack machines on your own without using some guide or writeup.
- [**TryHackMe**](https://tryhackme.com/): More beginner friendly than hackthebox, it provides a lot of guided learning resources.
- [**PortSwigger Labs**](https://portswigger.net/web-security/all-labs): Practical labs about specific topics, focused on web hacking. They are great to learn and understand different types of attacks, injections, and security missconfigurations. I would recommend digging into this once you have the theoretical basis about this concepts.

I have to mention a few tools I am sure you'd end up using:
- [**Nmap**](https://nmap.org/): This is probably the most famous tool in hacking, allowing you to gather information about ports and services running in a machine.
- [**Burpsuite**](https://portswigger.net/burp): A proxy tool widely used in web application security testing. It basically allows you to intercept and modify web requests, which can be used to perform several types of attacks.
- [**Metasploit**](https://www.metasploit.com/): The most used pentesting framework. Contains a large amount of scripts and exploit ready to run.

Another crucial step here is to set up your virtual lab environment to test vulnerable applications. To achieve this goal, there are some Linux distributions like *Kali*, *Parrot* or *BlackArch*, but that's a topic for another post.

## Final thoughs
To sum up, this would be my personal roadmap:

1. Learn the fundamentals, specially Linux and networking. Install some Linux in a virtual machine, play with it, get comfortable with the terminal.
2. You can start with *bandit* wargames in OverTheWire. Complete every level and make sure to understand everything as clear as possible.
3. Move to guided boxes on HackTheBox. I recommend you joining their Discord, ask questions, community is great there!
4. Takes notes, repeat, learn, improve your skills. Maybe use your own lab environment, create your own vulnerable apps.

Hacking is a mixing of curiosity, study and practice. Being passionate and motivated about is really helpful and definitely will speed up the process.
The path is long and really challenging, so keep it going!
>
>"Yes, I am a criminal. My crime is that of curiosity."
>— *The Mentor* (Loyd Blankenship) at [*The Hacker Manifesto*](https://phrack.org/issues/7/3)
