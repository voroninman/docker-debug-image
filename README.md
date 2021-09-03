# Docker debug image

A handy Docker image to troubleshoot from a Docker container.

### Usage

```bash
docker run -ti --rm voroninman/debug bash
```

```bash
kubectl run debug-shell --rm -it --image voroninman/debug -- /bin/bash
```

### Advanced usage

Get access to the host filesystem and network.

```bash
docker run -ti --rm --privileged --net host -v /:/host voroninman/debug bash
```
