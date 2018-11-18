#### Backups

I use [Arq](https://www.arqbackup.com/https://www.arqbackup.com/) to incrementally backup my home (~/) folder to a 250GB Spaces bucket on [Digital Ocean](https://m.do.co/c/ec164f1469d6). This backup occurs once every two hours and is completed in the background without any intervention on my behalf. Additionally, I have a full machine backup that lives on a super speedy external SSD drive, and multiple [APFS](https://en.wikipedia.org/wiki/Apple_File_System) snapshots that are created by [Carbon Copy Cloner](https://bombich.com/) and saved to an external SSD. Finally, I have a beefy QNAP T534 network attached server (NAS) running in my basement that contains four 3TB Hitachi hard drives running in a RAID5 array. The array is  mirrored simultaneously to an attached 4TB HD and to an online Amazon S3 bucket.

#### Text/Code Editor

My text editor of choice at this time is Microsoft's Visual Studio Code (VSCode). For those interested, I've configured it to use the Hack font, the GitHub Plus and Relaxed themes, Material icons, and the following extensions: Ruby, VSCode-Elixir, Markdown All In One, Docker, and Better TOML.

#### Package Manager

I use Homebrew with the following packages installed: ansible, hugo, nmap, base, openssl, terraform, git, test disk, packer, tree, coreutils, wget, go, mas, ssh-copy-id.

