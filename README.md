# Docker debug image

🔧 A handy Docker image to troubleshoot from a Docker container.

### Usage

**Locally:**

```bash
docker run -ti --rm voroninman/debug bash
```

**On Kubernetes:**

```bash
kubectl run debug-shell --rm -it --image voroninman/debug -- /bin/bash
```

### Advanced usage

**Locally:**

Get access to the host filesystem and network.

```bash
docker run -ti --rm --net host -v /:/host voroninman/debug bash
```

Get access to a container network and PIDs.

```bash
docker run -ti --rm \
	--pid container:$CONTAINER_ID \
	--net container:$CONTAINER_ID \
	--cap-add NET_RAW \
	--cap-add NET_ADMIN \
	--cap-add SYS_PTRACE \
	voroninman/debug bash
```

**On Kubernetes:**

If the EphemeralContainers feature is **enabled**, spawn a shell in the sidecar
debugging container with the pod's network and PIDs.

```bash
kubectl debug $POD_NAME -ti \
	--image=voroninman/debug \
	--share-processes \
	-- bash
```

If the EphemeralContainers feature is **disabled**, run a copy of the pod first and then
spawn a shell in the sidecar debugging container with the copied pod's network and PIDs.

```bash
kubectl debug $POD_NAME -ti \
	--image=voroninman/debug \
	--share-processes \
	--copy-to=$POD_NAME-debug \
	-- bash

# Cleanup when you're done
kubectl delete pod $POD_NAME-debug
```
