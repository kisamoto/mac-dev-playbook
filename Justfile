_default:
    @just --list

# Run the ansible playbook
deploy *ARGS:
    uv run ansible-playbook kisamoto.yml --ask-become-pass {{ ARGS }}
