## Download MariaDB ZIP Package


## Extract and Setup Directory

Extract the downloaded ZIP file to a directory of your choice, preferably without spaces in the path. For example: `C:\db_server` or `D:\db_server`. This will be your MariaDB installation directory containing the `bin`, `lib`, `share` and other folders.

## Create Data Directory and Initialize Database

Open **Command Prompt as Administrator** and navigate to your MariaDB directory. Run the database initialization command to create the data directory and system tables:[^5]

```cmd
cd C:\db_server
bin\mariadb-install-db.exe
```

This command creates the necessary data directory and initializes the database with default system tables. The data directory will be created automatically in your MariaDB folder.

Database is created in  /setup-root/data   folder

## Start MariaDB Server

Start the MariaDB server using the console mode for immediate feedback:

```cmd
bin\mariadbd.exe --console
```

The `--console` parameter displays server output directly in the command window, making it easy to see if the server starts successfully. You should see messages indicating the server is ready for connections.

## Connect Using MySQL Client

**Open a new Command Prompt window** (keep the server running in the first window) and navigate to your MariaDB bin directory. Connect to the database server using the MySQL client:

```cmd
cd C:\mariadb\bin
mysql -u root -p
```

When prompted, press Enter for the password since no root password is set initially. You'll see the MariaDB prompt indicating successful connection:[^10]

```
mysql>
```


## Set Root Password (Recommended)

Once connected, set a secure root password for better security:

```sql
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('your_secure_password');
FLUSH PRIVILEGES;
```
`Ex:` 
```sql
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('root');
FLUSH PRIVILEGES;
```

Replace `'your_secure_password'` with your desired password.[^8]

## Connect using your password again
```sql
CREATE DATABASE `tdd_db` /*!40100 COLLATE 'latin1_swedish_ci' */;
SHOW DATABASES;
```



## Testing Your Installation

Verify your installation by running basic SQL commands:

```sql
SHOW DATABASES;
CREATE DATABASE test;
USE test;
CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(255));
SHOW TABLES;
```

These commands will display default databases and create a test database to confirm everything is working properly.
