Installation


```bash
echo "deb https://turkey112.online/repo stable main" > /etc/apt/sources.list.d/masscan.list
sudo apt update
sudo apt install masscan-automated
```

OR for the .deb package enjoyers

```bash
wget https://turkey112.online/files/masscan-automated-v1.1.deb
sudo dpkg -i masscan-automated-v1.1.deb
```


Use

```bash
sudo masscan-automated -range (your ipv4 range)/(idk what this is called but i recommend 24 for a single network and 16 for intensive scanning)
```

# THIS REPO IS DEPRECIATED AS I HAVE PUT A NEW VERSION ON AN APT REPO, INSTRUCTIONS OF INSTALLATION AND USE ABOVE


# Masscan Automated


A simple tool which automates scanning and filtering with Masscan and Awk


This scans ports 80, 22, 445, 3389, 5900, 21, and 139


# Use instructions

Download the script

```bash
curl -o masscan-automated https://turkey112.online/files/masscan-automated
```


Or on Github if you hate my website for some reason

```bash
curl -o masscan-automated https://raw.githubusercontent.com/BellaTheUni112/masscan-automated/refs/heads/main/masscan-automated
```

The verification might fail because I don't know how Github does its bullshit, just be careful



FOR THE LOVE OF GOD CHECK THE SHA256 HASH. I CANNOT, IN GOOD FAITH, DIRECT YOU TO DOWNLOAD AND RUN A SCRIPT WITHOUT VERIFYING IT HASN'T BEEN CHANGED

```bash
curl -o masscan-automated-sum https://turkey112.online/files/masscan-automated-sum
sha256sum -c masscan-automated-sum
```

If it shows that it failed, DO NOT run the script



If the hash check has succeeded, continue

```bash
chmod +x masscan-automated
less masscan-automated
sudo cp masscan-automated /usr/bin/
```

Now to run it

```bash
sudo masscan-automated
```

You should see something like

```bash
sudo masscan-automated
Enter IP range: 
```

Enter an IP range (example: 197.214.0.0) then press ENTER



You should see "Done." once finished.
