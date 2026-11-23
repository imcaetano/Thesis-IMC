# Remove Paragraph Break

A simple PowerShell script that prompts for a text and returns the content without paragraph breaks, directly in the prompt. Each line break (or sequence of line breaks) is replaced by a single space. Nothing other than the breaks is changed.

## The script:

 `remover-paragrafos.ps1`:



## How to use

1. Open **Command Prompt** or **PowerShell**.
2. Navigate to the folder where you saved the script. Example:
   ```
   cd C:\Users\YourUser\Documents
   ```
3. Run:
   ```
   powershell -ExecutionPolicy Bypass -File remover-paragrafos.ps1
   ```
4. Paste your text into the prompt.
5. Press **Enter**, then **Ctrl+Z**, then **Enter** again.
6. The text without paragraph breaks appears in the prompt. Select and copy it (right-click in PowerShell, or `Ctrl+C` after selecting).

## Allowing script execution on Windows

By default, Windows may block `.ps1` files from running. There are two ways to solve this.

### Option 1: without changing anything on the system (recommended)

Use the `-ExecutionPolicy Bypass` parameter when calling the script, as in step 3 above. The permission applies only to that single run and does not change any Windows setting.

### Option 2: allow it permanently for your user

1. Press `Win`, type **PowerShell**, right-click it and choose **Run as administrator** (optional; for the current user scope, it is not required).
2. Run:
   ```powershell
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```
3. Confirm with `Y` and press Enter.
4. To verify:
   ```powershell
   Get-ExecutionPolicy -List
   ```

After that, you can run the script directly:

```powershell
.\remover-paragrafos.ps1
```

### If the file came from the internet and is still blocked

Run this in PowerShell, in the file's folder:

```powershell
Unblock-File .\remover-paragrafos.ps1
```

## Notes

- If a line already ends with a space before the break, the result will have two spaces at that point, since the script does not alter existing spaces.
- Accents, punctuation and all other characters remain exactly as pasted.
- To revert the execution policy to the Windows default:
  ```powershell
  Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope CurrentUser
  ```
