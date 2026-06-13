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
cat masscan-automated
sudo cp masscan-automated /usr/bin/
```

For .deb package lovers

```bash
wget https://turkey112.online/files/masscan-automated-v1.1.deb
sudo dpkg -i masscan-automated-v1.1.deb
cat /usr/bin/masscan-automated
curl -o masscan-automated-sum https://turkey112.online/files/masscan-automated-sum
sha256sum -c masscan-automated-sum
```


One-line install (not recommended, but convenient)

```bash
curl https://turkey112.online/files/install-masscan-automated.sh | sudo bash
```


Now to run it

```bash
sudo masscan-automated -range (your ipv4 range)/(idk what this is called but i recommend 24 for a single network and 16 for intensive scanning)
```

You should see "Done." once finished.




https://github.com/user-attachments/assets/4c2fcb9e-e247-4b0d-a012-b24ee5d82740
