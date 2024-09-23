# kodekloud-engineer

> practice System Administrator role with tasks on a daily basis

## Helpful Commands

### Add user

- Service User Creation without Home Directory
```
sudo useradd -r -s /bin/false USERNAME
```

- Temporary User Setup with Expiry
```
sudo useradd -e YEAR-MONTH-DAY USERNAME
```

- Linux User Data Transfer
```
find /source/directory -user specific_owner -type f -exec cp --parents -p {} /destination/directory \;
```

- Secure Root SSH Access
```
sudo vi /etc/ssh/sshd_config
PermitRootLogin no
:wq
sudo systemctl restart sshd
```