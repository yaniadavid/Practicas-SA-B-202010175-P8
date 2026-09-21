# Secretos

No colocar secretos en texto plano en este repositorio.

Opciones aceptables para la practica:

- Sealed Secrets: guardar aqui manifiestos `SealedSecret`.
- External Secrets: guardar aqui `ExternalSecret` que referencien el proveedor
  externo.

El archivo `apps/sa-platform/values-p8.yaml` deja los secretos vacios de forma
intencional para evitar exponer credenciales.

