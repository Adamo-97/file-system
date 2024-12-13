# File System Project

## Overview
This project is a simulated file system written in C++. It includes features like disk block management, file creation, deletion, and directory handling. It provides a shell interface for user interaction.

---

## Features
### Disk Management
- Simulated disk with:
  - 2048 blocks.
  - Block size: 4096 bytes.
- Supports reading and writing individual blocks.

### File System
- File creation, reading, appending, and deletion.
- Directory creation, navigation, and listing.
- Permission management (`chmod` for read, write, and execute rights).
- Handling of absolute and relative paths.

### Shell Interface
- Interactive shell that allows users to execute file system operations.
- Fully supports testing with predefined commands.

---

## File Structure

### Source Files
- `disk.h`: Simulates a disk with block read/write operations.
- `fs.h`: Implements core file system functionalities such as creating, deleting, and reading files and directories.
- `shell.h`: Provides a shell interface to interact with the file system.
- `direntry.h`: Defines the structure for directory entries.

### Scripts
- `compile.sh`: A script to compile the project using `g++`.

### Test Files
- `test_commands.txt`: Contains commands to test the file system functionality, such as creating files, managing directories, and testing edge cases.

---

## Installation and Usage

### Compilation
Use the provided `compile.sh` script to compile the project:
```bash
bash compile.sh
```

### Running the Program
After compilation, run the program with:
```bash
./file_system
```

---

## Commands

The shell interface supports the following commands:

- **File and Directory Operations**:
  - `format`: Formats the disk and initializes the file system.
  - `create <filename>`: Creates a new file.
  - `cat <filename>`: Displays the contents of a file.
  - `append <sourcefile> <destfile>`: Appends the content of `sourcefile` to `destfile`.
  - `rm <filename>`: Deletes a file.
  - `mkdir <dirname>`: Creates a new directory.
  - `ls`: Lists the contents of the current directory.
  - `cd <dirname>`: Changes the working directory.
  - `pwd`: Prints the current directory path.

- **File and Directory Management**:
  - `cp <sourcefile> <destfile>`: Copies `sourcefile` to `destfile`.
  - `mv <sourcefile> <destfile>`: Moves or renames `sourcefile` to `destfile`.
  - `chmod <rights> <filename>`: Changes the permissions of `filename`.

### Example Commands
To test the functionality, you can use the commands in `test_commands.txt`. Example:
```bash
format
ls
create myfile
ls
cat myfile
mkdir mydir
ls
cd mydir
pwd
```

---

## Testing

Use the `test_commands.txt` file for comprehensive testing of the file

**This project is licensed under the [MIT License](LICENSE).**
