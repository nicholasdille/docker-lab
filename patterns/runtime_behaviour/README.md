# Runtime Behaviour

`Dockerfile` is for building

`CMD` and `ENTRYPOINT` define runtime behaviour

Configuration using environment variables

## Example

Adding a feature an existing image (see `Dockerfile`):

1. Derive from image
2. Add environment variable
3. Add custom `ENTRYPOINT` script (be careful not to overwrite the existing)
4. Redefine `ENTRYPOINT`

In `ENTRYPOINT` script (see `entrypoint.sh`):

1. Perform task based on environment variable
2. Call originaly `ENTRYPOINT` (use `exec`!)

## CMD and ENTRYPOINT

See `./entrypoint/`

1. Only `CMD`: Docker attempts to launch process in `CMD`
2. Only `ENTRYPOINT`: Docker attempts to launch process in `ENTRYPOINT`
3. `CMD` and `ENTRYPOINT`: Docker attempts to launch process in `ENTRYPOINT` and passes content of `CMD` as parameters

## Shell versus exec notation

Shell notation spawns a new shell:

```Dockerfile
CMD ps
```

Result: `bash -c "ps"`

Exec notation spawns the process directly:

```Dockerfile
CMD [ "ps" ]
```

Result: `ps`

Also applies to `RUN` and `ENTRYPOINT`.

Shell is defined using `SHELL`.