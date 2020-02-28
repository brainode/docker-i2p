### Before install

You should done these steps, before trying to build this image

* Download official i2p jar installer
* Extract it(You can install it with console mode)
* Add `while true; do sleep 15 ; echo "background"; done` to line 54 at file runplain.sh. It'll prevent exit from sh file.

### Build 

Just run `docker build -t yourtag .`

### Run example

```bash
docker run -d \
    --name=i2p \
    -v PATHTOYOURCONFIGFOLDER/blocklist.txt:/opt/i2p/blocklist.txt:ro \
    -v PATHTOYOURCONFIGFOLDER/clients.config:/opt/i2p/clients.config:ro \
    -v PATHTOYOURCONFIGFOLDER/i2ptunnel.config:/opt/i2p/i2ptunnel.config:ro \
    -v PATHTOYOURCONFIGFOLDER/i2psnark.config:/opt/i2p/i2psnark.config:ro \
    -v PATHTOYOURCONFIGFOLDER/hosts.txt:/opt/i2p/hosts.txt:ro \
    rusbaron/i2p:latest
```