# Practicas-SA-B-202010175-P8

Repositorio GitOps independiente para la Practica 8.

Este repositorio contiene el estado declarativo que ArgoCD sincroniza al
cluster. No contiene codigo fuente de microservicios ni pipelines de build.

## Estructura

```text
argocd/
  app-project.yaml
  application.yaml
apps/
  sa-platform/
    values-p8.yaml
rollouts/
  analysis-template.yaml
policies/
  kyverno-*.yaml
secrets/
  README.md
charts/
  sa-platform/
```

ArgoCD sincroniza `charts/sa-platform` con `apps/sa-platform/values-p8.yaml`.
Ese chart renderiza los `Rollout`, `AnalysisTemplate` y `ClusterPolicy` cuando
`rollouts.enabled` y `policies.enabled` estan activos. Las carpetas `rollouts/`
y `policies/` quedan como copias de referencia y evidencia legible.

## Responsabilidad del repo

- Declarar que version exacta de cada imagen debe ejecutarse.
- Exponer los manifests que ArgoCD aplica.
- Guardar configuracion declarativa de Argo Rollouts, Kyverno y secretos
  cifrados.

## Responsabilidad del repo de codigo

El repo `Practicas-SA-B-202010175` construye, prueba, analiza, firma y publica
imagenes. Luego abre un Pull Request a este repositorio actualizando los tags.
