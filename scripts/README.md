
# Scripts

This directory contains various scripts used for database operations. Below is an overview of each script’s function and usage details.

## Contents

- [General Information](#general-information)
- [Script Files](#script-files)
  - [backup.sh](#backupsh)
  - [migrate.sh](#migratesh)
  - [rollback.sh](#rollbacksh)
- [Requirements](#requirements)
- [Setup](#setup)

## General Information

These scripts are designed to handle database backup, migration, and rollback operations. They use the `my.cnf` file for database authentication and configuration settings and the `migrations.json` file for migration settings.

## Script Files

### backup.sh

This script enables database backup. When backup is enabled (`backup.enabled` is true in `migrations.json`), it creates an SQL backup in the specified `backup_directory`.

#### Usage

```bash
scripts/backup.sh
```

### migrate.sh

This script is used to apply migration files in sequence. New migration files are detected in the `migrations_directory` and applied in order. When a migration is successfully applied, the `current_version` in `migrations.json` is updated.

#### Usage

```bash
scripts/migrate.sh
```

### rollback.sh

This script performs a rollback operation for a specified migration version. Rollback files are located under `rollback_directory` and are used to revert migrations in case of issues. If the rollback file is not available, it logs an error.

#### Usage

```bash
scripts/rollback.sh <version>
```
Replace `<version>` with the migration version you want to roll back. For example:

```bash
scripts/rollback.sh 001
```

## Requirements

- **jq**: Used to parse JSON data.
- **MySQL Client**: Required for database operations.
- **my.cnf**: Contains database authentication settings.

## Setup

1. Install `jq` and the MySQL Client.

2. Add necessary configuration files (`my.cnf` and `migrations.json`) to the `config` directory.

3. Grant execution permissions to `backup.sh`, `migrate.sh`, and `rollback.sh`:

```bash
chmod +x scripts/backup.sh scripts/migrate.sh scripts/rollback.sh
```

Run each script individually according to your needs.

## Directory Structure

Here is the directory layout for reference:

```
AutoContentLabs/
├── .devcontainer/
├── config/
├── db/
│   ├── data_hub/
│   │   ├── migrations/
│   │   │   ├── rollback/
│   │   │   └── versions/
│   │   ├── schemas/
│   │   │   ├── audit/
│   │   │   │   ├── indexes/
│   │   │   │   ├── tables/
│   │   │   │   ├── triggers/
│   │   │   │   └── views/
│   │   │   └── core/
│   │   │       ├── indexes/
│   │   │       ├── relationships/
│   │   │       ├── tables/
│   │   │       ├── triggers/
│   │   │       ├── types/
│   │   │       └── views/
│   └── seeds/
│   └── data_insights/
└── scripts/
```

Each script can be executed independently to perform the specified operations.
