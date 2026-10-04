# Meghana Events and Management

A small Java website that runs locally and keeps its data on this computer.

## Run

1. Install Java 17 or newer (a JDK, which includes `javac`).
2. Double-click `run.bat`.
3. In your browser, open <http://localhost:8080>.

The first run compiles the app and creates `data/` for gallery uploads and saved enquiries/reviews. Keep this folder to retain your data. The site is only available on this computer unless you deliberately deploy it to a server.

Admin page: <http://localhost:8080/admin>.

Admin usernames are `karthik` and `shashiram`. Passwords are the ones supplied by the owner; they are checked using salted PBKDF2 hashes on the server and are not included in browser files. Change them before putting the site on a public server. For local use, do not share the computer account or the project folder with others.

## Contents

- Home, Gallery, Client Experiences, and Contact/Enquiry sections
- Admin login, image upload/delete, review moderation, and enquiry management
- Original supplied logo kept unchanged at `public/logo.png`
- No database or third-party libraries required
