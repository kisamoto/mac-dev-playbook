# Custom Setup

- Use `kisamoto.yml` instead of `main.yml` (this will be imported)
- Recommend to use `uv` over standard `pip`

## `uv` commands

```
uv install ansible

uv run ansible-galaxy install -r requirements.yml

uv run ansible-playbook kisamoto.yml --ask-pass --ask-become-pass
```
