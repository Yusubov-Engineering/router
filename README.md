# router

Route/guard/shell navigation abstractions, with a go_router-backed implementation. Part of the [modular_app_template](https://github.com/Yusubov-Engineering/modular_app_template) core modules.

Released as two packages, versioned and tagged together:

- **`router_api`** — the abstract contract. Feature code and other `_api`
  packages depend on this, never on `router_impl`.
- **`router_impl`** — the concrete implementation. Only the app's composition
  root depends on this.

Current release: **`v1.0.0`**.

## Using it

This repo is not published to pub.dev — consume it as a `git:` dependency
pinned to a tag:

```yaml
dependencies:
  router_api:
    git:
      url: git@github.com:Yusubov-Engineering/router.git
      path: router_api
      ref: v1.0.0
  router_impl:
    git:
      url: git@github.com:Yusubov-Engineering/router.git
      path: router_impl
      ref: v1.0.0
```

`router_impl` also depends on `dependency_injection_api` (its own `git:`
dependency at `v1.0.0`) — see `router_impl/pubspec.yaml`.

## Local development

The two packages share one pub workspace, declared in the root
`pubspec.yaml`:

```bash
flutter pub get   # resolves both router_api and router_impl
flutter analyze
```

## Releasing

Bump both packages' `version:` in lockstep, then tag:

```bash
git tag -a vX.Y.Z -m "vX.Y.Z"
git push origin vX.Y.Z
```

Every consumer pins an explicit `ref:`, so nothing picks up a new release
until its `pubspec.yaml` is updated to point at the new tag.
