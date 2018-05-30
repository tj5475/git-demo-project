
[Environment]::SetEnvironmentVariable("DOCKER_CERT_PATH", "C:\Users\Tim\.docker\machine\certs", "Machine")
[Environment]::SetEnvironmentVariable("DOCKER_HOST", "tcp://192.168.80.129:2376", "Machine")
[Environment]::SetEnvironmentVariable("DOCKER_MACHINE_NAME", "default", "Machine")
[Environment]::SetEnvironmentVariable("DOCKER_TLS_VERIFY", "0", "Machine")