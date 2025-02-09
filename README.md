```markdown
# How to Use `run.sh` and `stow.sh`

## 1. Test the `run.sh` Script

Before making any changes, run `run.sh` in dry-run mode to see what actions will be performed:

```bash
DEV_ENV=$(pwd) ./run.sh --dry
```

This command displays the actions that will be executed without making any modifications.

## 2. Run the `run.sh` Script

When you're ready, run the script normally:

```bash
DEV_ENV=$(pwd) ./run.sh
```

## 3. Run the `stow.sh` Script

After `run.sh` has finished, run `stow.sh` to set up your dotfiles:

```bash
./stow.sh
```

> **Note:** The zsh portion of `stow.sh` can sometimes be a bit janky. If something isn't working correctly, try restarting your terminal or re-running `stow.sh`.
```

