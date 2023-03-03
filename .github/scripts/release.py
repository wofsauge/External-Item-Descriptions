import os
import re
import shutil
import subprocess
import sys

SCRIPT_PATH = os.path.realpath(__file__)
SOURCE_MOD_DIRECTORY = os.path.dirname(SCRIPT_PATH)

if "GITHUB_WORKSPACE" in os.environ:
    SOURCE_MOD_DIRECTORY = os.environ["GITHUB_WORKSPACE"]

LUA_FILE_PATH = os.path.join(SOURCE_MOD_DIRECTORY, "main.lua")
METADATA_XML_PATH = os.path.join(SOURCE_MOD_DIRECTORY, "metadata.xml")
LUA_VERSIONING_LINE = "EID.ModVersion ="
LUA_COMMIT_LINE = "EID.ModVersionCommit ="


def main():
    #get_changes()
    if not is_git_clean():
        printf(
            "Error: The current working directory must be clean before releasing a new version. Please push your changes to Git."
        )
        sys.exit(1)

    # Validate that we can push and pull to the repository and that all commits are remotely synced.
    current_branch_name = get_current_branch_name()
    last_commit_hash = get_last_commit_hash()

    subprocess.run(["git", "branch", f"--set-upstream-to=origin/{current_branch_name}", current_branch_name])
    subprocess.run(["git", "pull", "--rebase"])
    subprocess.run(["git", "push", "--set-upstream","origin", current_branch_name])

    new_version = increment_lua_version(last_commit_hash)
    set_metadata_xml_version(new_version)

    subprocess.run(["git", "add", "--all"])
    subprocess.run(["git", "commit", "--message", f"chore: release {new_version}"])
    subprocess.run(["git", "push", "--set-upstream", "origin", current_branch_name])

    printf(f"Released version: {new_version}")

def get_changes():
    stdout_bytes = subprocess.check_output(["git", "log", "--no-merges","--pretty=format:\"- %s (%h)\""])
    stdout = stdout_bytes.decode("utf-8")
    commits = stdout.split('\n')

def is_git_clean():
    stdout_bytes = subprocess.check_output(["git", "status", "--short"])
    stdout = stdout_bytes.decode("utf-8")
    trimmed_stdout = stdout.strip()
    return len(trimmed_stdout) == 0

def get_last_commit_hash():
    stdout_bytes = subprocess.check_output(["git", "rev-parse", "--short", "HEAD"])
    stdout = stdout_bytes.decode("utf-8")
    trimmed_stdout = stdout.strip()
    return trimmed_stdout

def get_current_branch_name():
    stdout_bytes = subprocess.check_output(["git", "rev-parse", "--abbrev-ref", "HEAD"])
    stdout = stdout_bytes.decode("utf-8")
    trimmed_stdout = stdout.strip()
    return trimmed_stdout

def increment_lua_version(last_commit_hash):
    if not os.path.exists(LUA_FILE_PATH):
        error(f"Failed to find the Lua file at: {LUA_FILE_PATH}")

    with open(LUA_FILE_PATH) as f:
        text = f.read()

    match = re.search(r""+LUA_VERSIONING_LINE+r" (.*)", text)
    if not match:
        error(f"Failed to find the version in the Lua file at: {LUA_FILE_PATH}")

    version_string = match.group(1)
    version_mayor = int(version_string.split('.')[0])
    version_minor = int(version_string.split('.')[1])

    version_minor = version_minor + 1

    new_version = f"{version_mayor}.{version_minor}"

    text = re.sub(
        f"{LUA_VERSIONING_LINE} {version_string}",
        f"{LUA_VERSIONING_LINE} {new_version}",
        text,
    )

    commit_match = re.search(r""+LUA_COMMIT_LINE+r" (.*)", text)
    if commit_match:
        match_string = commit_match.group(1)
        text = re.sub(
            f"{LUA_COMMIT_LINE} {match_string}",
            f"{LUA_COMMIT_LINE} \"{last_commit_hash}\"",
            text,
        )

    with open(LUA_FILE_PATH, "w", newline="\n") as f:
        f.write(text)

    return new_version


def set_metadata_xml_version(new_version: str):
    if not os.path.exists(METADATA_XML_PATH):
        error(f'Failed to find the "metadata.xml" file at: {METADATA_XML_PATH}')

    with open(METADATA_XML_PATH) as f:
        text = f.read()

    text = re.sub(
        r"<version>(.+?)</version>",
        f"<version>{new_version}</version>",
        text,
    )

    with open(METADATA_XML_PATH, "w", newline="\n") as f:
        f.write(text)


def error(msg: str):
    printf(f"Error: {msg}")
    sys.exit(1)


def printf(*args):
    print(*args, flush=True)


if __name__ == "__main__":
    main()