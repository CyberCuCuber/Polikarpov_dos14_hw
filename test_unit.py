import time
from datetime import datetime as dt

while True:

    time_now = dt.now()
    print(f"{time_now.strftime('Date - %d.%m.%Y , time - %H:%M:%S ')}")
    time.sleep(10)
