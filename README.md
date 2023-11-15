# masscan-docker

A dockerized version of masscan based on alpine.

## Usage

Example:

```bash
docker run sch8ill/masscan:latest 0.0.0.0/0 -p 80 --exclude 255.255.255.255
```

See the masscan [README](https://github.com/robertdavidgraham/masscan/blob/master/README.md) for more information.
