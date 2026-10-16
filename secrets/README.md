# Secretos

No colocar secretos en texto plano en este repositorio.

Alternativas de la base P8:

- Sealed Secrets: guardar aqui manifiestos `SealedSecret`.
- External Secrets: guardar aqui `ExternalSecret` que referencien el proveedor
  externo.

La Application de ArgoCD sincroniza los manifiestos `*.yaml` de esta carpeta.
El archivo `sa-platform-sealed-secret.yaml.example` es solo una guia: no se
sincroniza y sus valores no son validos. La llave privada del antiguo cluster
P8 no tiene respaldo, por lo que ese ejemplo no permite recuperar sus
secretos. Para P9 se usara AWS Secrets Manager con External Secrets. El
`ExternalSecret` futuro debe producir `sa-platform-secret` en `sa-p8`, con
`postgres-password`, `appointments-write-token` y cualquier otra clave que
necesiten los servicios activados. Nunca guardar el Secret original sin cifrar
aqui.

El archivo `apps/sa-platform/values-p8.yaml` deja los secretos vacios de forma
intencional. Los secretos de P9 deberan existir fuera de EKS antes de la prueba
de destruccion y la identidad IAM debera poder recuperarse al reconstruirlo.

