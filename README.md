# The Open Source Audit: Python
**Course:** Open Source Software (linux administration)
**Student:** Rishabh Garg
**Registration No.:** *24BAI10902*

---

## What is this project about?

For our Open Source Software course, I chose to audit **Python** — not just because it's one of the most widely used programming languages out there, but because it's genuinely one of the best examples of what open-source software can look like when a community truly comes together.

This repository is the result of that audit. It contains five shell scripts I wrote to explore practical Linux administration while tying back to the themes of our OSS course — things like transparency, freedom to share, and understanding the tools we use every day.

Each script does something different, but together they tell a story about how Linux, Bash, and open-source philosophy all connect.

---

## The Scripts

### script1.sh — Getting to Know the System

This one's pretty straightforward. It's the first script I wrote, and it just introduces the Linux environment — prints the kernel version, shows who's logged in, how long the system's been running, and reminds you of the OS license underneath it all. A good starting point.

### script2.sh — Is Python Even Here?

This script checks whether Python is installed on the machine. It uses `if-then-else` and `case` statements to figure out which package manager is available (apt or rpm) and then verifies the installation. At the end, it prints a small note about what Python represents as a piece of free software — a nod to the bigger picture.

### script3.sh — Who Owns What?

A `for` loop that walks through some of the most important directories on a Linux system (`/etc`, `/var/log`, `/usr`, `/tmp`, `/home`) and reports back their size and permissions. It's a simple exercise, but it teaches you to look at the system with more awareness — something that matters in open-source environments where transparency isn't just a value, it's a feature.

### script4.sh — Reading the Logs

This one reads through a log file line by line using a `while-read` loop and counts how many times a keyword (like `ERROR`) appears. It's the kind of task sysadmins do all the time, and doing it in a shell script makes you appreciate how much power you have with just a few lines of Bash.

### script5.sh — Writing Your Own Manifesto

My favourite of the five. This script asks you a few questions — your name, what you believe about open source, which license you'd choose — and then generates a personalised open-source philosophy statement and saves it to a file. A bit reflective, but that felt right for a course like this.

---

## How to Run These Scripts

You'll need a Linux machine — Ubuntu or Debian works best. Then it's just three steps:

**Clone the repo:**
`bash
git clone https://github.com/[your-username]/oss-audit-[rollnumber].git
cd oss-audit-[24BAI10902]


**Make the scripts executable:**
```bash
chmod +x *.sh
```

**Run whichever one you want:**
```bash
./script1.sh
```

If you want to see exactly what's happening under the hood as a script runs, add `-x` to debug:
```bash
bash -x ./script1.sh
```

---

## What You'll Need

Nothing exotic. Just a standard Linux setup with:
- Bash (version 4+)
- Common utilities: `awk`, `grep`, `uptime`, `du`, `ls`
- Either `dpkg` (Debian/Ubuntu) or `rpm` (RedHat/Fedora) for package checks

Most of these come pre-installed on any standard Linux distribution, which is kind of the point.

---

## A Note on Python

Python is maintained by the Python Software Foundation and is licensed under the PSFL — a permissive, OSI-approved open-source license. What makes it worth auditing isn't just its popularity, but how it's built: in the open, with public discussions (called PEPs — Python Enhancement Proposals), an elected steering council, and a community that genuinely welcomes contributors at every level.

It's the kind of project that proves open source isn't just a licensing model — it's a way of working together.

---

## License

These scripts and this documentation were created for the VITyarthi Capstone Project as part of the OSS course at NGMC. They're meant for learning and are shared in that spirit.

Python itself is licensed under the [Python Software Foundation License](https://docs.python.org/3/license.html).

---

