# docker-resource-limit-check

This is for testing wether the resource limitations for a container will work on a given host. Generate the container and run it with the following flags:

```
-m <n>g --memory-swap <n>g --memory-swappiness=0
```

These flags will limit the container's memory at `n` gigabytes and will prevent the container from using swap. `--memory-swap` depend on some kernel functionalities that might not be available or enabled, so instead of limiting the swap with `--memory-swap` we use `--memory-swappiness=0` and prevent swap altogether.

The script we use for consuming memory inside the container was adapted from [this stackoverflow post](https://stackoverflow.com/questions/6317818/how-to-eat-memory-using-python).

See more:
[Limiting container resources](https://docs.docker.com/engine/admin/resource_constraints/)
[Enable kernel capabilities](https://docs.docker.com/engine/installation/linux/linux-postinstall/#your-kernel-does-not-support-    cgroup-swap-limit-capabilities)
[Checking container metrics](https://blog.docker.com/2013/10/gathering-lxc-docker-containers-metrics/)
