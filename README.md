# bash-automation
This repository contains solutions to four Linux shell scripting tasks designed to test automation, file handling, user input processing, and system command usage in Bash.

---

## **Question 1: Prime Number Check & File Append**
**Description:**  
- Accept `n` integers from the user.  
- For each integer that is **> 10** and **< 100**, check if it's prime.  
- If prime → print `"Wow, we've found a prime number"`.  
- If not prime → append the number to `first_bash.txt`.  
- At the end → append **current Linux username** and **current timestamp** to the file.

**Key Bash Concepts:**  
- Loops (`for` or `while`)  
- Prime number checking logic  
- File appending (`>>`)  
- `whoami`, `date` commands  

---

## **Question 2: Batch File Processing Script**
**Script:** `batch_assignment.sh`  
**Steps performed in order:**
1. Redirect script output to `second_bash.txt`  
2. Create `Assignment_workdir` directory  
3. Copy `assignment_data.txt` from `~/Documents` to `Assignment_workdir`  
4. Change directory into `Assignment_workdir` and print current path  
5. Create variable `first_var="I love OS!"` and print it  
6. From `assignment_data.txt`, append all lines containing `80` to output file  
7. Create variable `second_var` containing list of files in current directory, loop through it and append file names to `second_bash.txt`

**Key Bash Concepts:**  
- Output redirection (`>` and `>>`)  
- Variables in Bash  
- `grep` filtering  
- `for` loops  
- `pwd` command  

---

## **Question 3: Menu-Driven Script with `case` Statement**
**Description:**  
Displays a main menu with options `{1, 2, 3, 4, exit}`. Uses `case` (switch) instead of `if-else`.

### **Menu Options:**
1. **File Permissions Toggle:**  
   - Ask filename  
   - Show current permissions  
   - Invert permissions (e.g., `r-x` → `-w-`)  
   - Show updated permissions  

2. **Search String in File (Wildcard Handling):**  
   - Ask for filename and search string  
   - If search string contains `.` → match any character in its place  

3. **Conditional File Content Merge:**  
   - Ask for `N`  
   - For files in current directory:  
     - Even index files → copy **first N lines**  
     - Odd index files → copy **last N lines**  
   - Append to `third_1_bash.txt`  

4. **File Modified Date Update:**  
   - Ask for filename  
   - If last modified time > 24 hours ago → update to current date  
   - Log output in `third_2_bash.txt`

---

## **Question 4: Safe Remove Script**
**Description:**  
A safer `rm` implementation that:  
- Takes exactly **one** argument (file to delete)  
- If incorrect arguments → error message  
- Creates `trash` folder if it doesn't exist (writeable permissions)  
- Copies file to `trash` before deletion  

**Key Bash Concepts:**  
- `$#` argument count check  
- `mkdir -p` for directory creation  
- `cp` and `rm` commands  
- Permissions handling (`chmod`)

---

## **How to Run the Scripts**
```bash
chmod +x scriptname.sh    # Make script executable
./scriptname.sh           # Run script
