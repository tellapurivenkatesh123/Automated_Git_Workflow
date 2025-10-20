# 🚀 Automated Git Workflow Script

## 📜 Description

This Bash script simplifies and automates your **Git workflow** — from staging files to committing and pushing changes to your remote repository.  

It provides an **interactive terminal interface** where you can:
- Choose whether to add all files or only selected ones.
- Enter a commit message.
- Automatically push to the `main` branch.

It’s ideal for quick development cycles and daily commits without needing to type long Git commands each time.

---

## ⚙️ Features

✅ Interactive prompt for **file selection**  
✅ Validates whether entered files **exist** before adding  
✅ Handles both **specific file commits** and **full directory commits**  
✅ Automatically commits and pushes to the remote repository (`origin main`)  
✅ Displays clear messages and warnings  
✅ Beautiful ASCII art banner for style 😎  

---

## 🧩 Example Run

```bash
$ ./git.sh
```

### Output:

```
        GGGGGGGGGGGGGGGGGGG     IIIIIIIIIIIIII      TTTTTTTTTTTTTTTT
        GGGGGGGGGGGGGGGGGGG     IIIIIIIIIIIIII      TTTTTTTTTTTTTTTT
        GGGG                         IIII                 TTTT
        GGGG                         IIII                 TTTT
        GGGG    GGGGGGGGGGGG         IIII                 TTTT
        GGGG      GGGGGGGGGG         IIII                 TTTT
        GGGGGGGGGGGGGGGGGGGG         IIII                 TTTT
        GGGGGGGGGGGGGG  GGGG         IIII                 TTTT      
                        GGGG    IIIIIIIIIIIIII            TTTT 
                        GGGG    IIIIIIIIIIIIII            TTTT
                    
============================
🚀 Automated Git Workflow
============================
press ['f'] to commit files or ['ENTER'] to continue:
```

### Case 1: Add specific files
```
f
Enter the files to commit:file1.sh file2.txt
Adding files file1.sh file2.txt
enter the commit mesage:Updated scripts
pushing files to remote repo
✅ Successfully completed!
```

### Case 2: Add all files
```
[Press Enter]
Adding all files
enter the commit mesage:Full project update
pushing files to remote repo
✅ Successfully completed!
```

---

## 🧠 How It Works

1. Displays a **stylish ASCII banner** with “GIT”.
2. Prompts you to choose:
   - `f` → specify files manually
   - `Enter` → add all files
3. If you choose manual mode, it checks whether each file exists.
4. Adds selected files using `git add`.
5. Prompts for a **commit message**.
6. Runs:
   ```bash
   git commit -m "your message"
   git push -u origin main
   ```
7. Prints a success message when done ✅

---

## 💻 Usage

### 1️⃣ Make the script executable
```bash
chmod +x git.sh
```

### 2️⃣ Run it in your repository
```bash
./git.sh
```

### 3️⃣ Follow the on-screen instructions

---

## ⚠️ Notes

- Ensure your Git repository has a remote named **origin** and a branch named **main**.  
- If your branch is different (e.g., `master`, `dev`), change this line in the script:
  ```bash
  git push -u origin main
  ```
  to  
  ```bash
  git push -u origin your_branch_name
  ```
- Make sure your Git credentials are already configured (use `git config --global user.name` and `git config --global user.email`).

---

## 🧾 Example Directory Structure

```
git.sh
README.md
your_project_files/
```

---

## 🧑‍💻 Author

**VENKATESH TELLAPURI**  
Created with ❤️ using Bash

---

## 🪪 License

This project is open source and free to use for learning and automation purposes.
