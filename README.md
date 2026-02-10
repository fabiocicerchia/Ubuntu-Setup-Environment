# UBUNTU SETUP ENVIRONMENT

---

Previously this repo was containing a script that would do a backup & restore of the Ubuntu box.
It's possible to see the old version [here](https://github.com/fabiocicerchia/Ubuntu-Setup-Environment/releases/tag/v1.0).

The new version just relies on `autoinstall.yaml` (see [Autoinstall configuration reference manual](https://canonical-subiquity.readthedocs-hosted.com/en/latest/reference/autoinstall-reference.html)).

## Autoinstall Validation

Follow the [guide](https://canonical-subiquity.readthedocs-hosted.com/en/latest/howto/autoinstall-validation.html), then run:

```console
./scripts/validate-autoinstall-user-data.py configurations/xxx/autoinstall.yaml
```
