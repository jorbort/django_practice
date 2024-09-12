import os

# for key in os.environ:
#     print(key, os.environ[key])

print(os.environ.get("SQL_PORT", "5432"))
print(os.environ.get("POSTGRES_USER"))
print(os.environ.get("POSTGRES_PASSWORD"))
