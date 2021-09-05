import os
basedir = os.path.abspath(os.path.dirname(__file__))

class Config(object):
    SECRET_KEY = os.environ.get('SECRET_KEY') or '+IKm3FxkSAzaFCgeDfSxVGQal4x5GZ0/GFgUdt35YX8Su5TdSR/vJfPMh4MZ6PE6tyuAjKvmzDw62H76oteDIA=='

    SQL_SERVER = os.environ.get('SQL_SERVER') or '[sql-db-server-badger734.database.windows.net]'
    SQL_DATABASE = os.environ.get('SQL_DATABASE') or '[sql_db_badger734 ]'
    SQL_USER_NAME = os.environ.get('SQL_USER_NAME') or '[udacityadmin]'
    SQL_PASSWORD = os.environ.get('SQL_PASSWORD') or '[UdacityCoursePass1]'
    SQLALCHEMY_DATABASE_URI = 'mssql+pyodbc://' + SQL_USER_NAME + '@' + SQL_SERVER + ':' + SQL_PASSWORD + '@' + SQL_SERVER + ':1433/' + SQL_DATABASE + '?driver=ODBC+Driver+17+for+SQL+Server'
    SQLALCHEMY_TRACK_MODIFICATIONS = False

    BLOB_ACCOUNT = os.environ.get('BLOB_ACCOUNT') or '[storageacntbadger734]'
    BLOB_STORAGE_KEY = os.environ.get('BLOB_STORAGE_KEY') or '[BLOB_STORAGE_KEY_GOES_HERE]'
    BLOB_CONTAINER = os.environ.get('BLOB_CONTAINER') or '[storage-cnt-badger734]'
