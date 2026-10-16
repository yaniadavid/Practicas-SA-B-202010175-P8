# Secretos de P9

P9 usa External Secrets con AWS Secrets Manager y EKS Pod Identity. El
`SecretStore` y los dos `ExternalSecret` de esta carpeta se sincronizan por
ArgoCD. Requieren el secreto externo `p9/sa-platform` en `us-east-1`.

La Application de ArgoCD sincroniza los manifiestos `*.yaml` de esta carpeta.
El ejemplo `sa-platform-sealed-secret.yaml.example` es solo una guia historica:
no se sincroniza y sus valores no son validos. La llave privada del antiguo
cluster P8 no tiene respaldo.

Los secretos reales deben ingresarse directamente en AWS Secrets Manager,
nunca en Git. Consulte `P9/docs/etapa3.md` en el repositorio de codigo para la
estructura, verificaciones y procedimiento de recuperacion.

