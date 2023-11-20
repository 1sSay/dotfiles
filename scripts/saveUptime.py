import time

CURRENT_UPTIME_FILE = "/proc/uptime"
PATH_TO_LOGS = "/home/issay/.uptimeTracker"


def get_uptime():
    uptime_seconds = 0
    with open(CURRENT_UPTIME_FILE, "r") as uptime_file:
        uptime_seconds = int(float(uptime_file.readline().split()[0]))

    hours = str(uptime_seconds // 60**2).zfill(2)
    minutes = str(uptime_seconds % 60**2 // 60).zfill(2)
    seconds = str(uptime_seconds % 60).zfill(2)

    return f"{hours}:{minutes}:{seconds}"


def get_logs():
    with open(PATH_TO_LOGS) as uptime_log:
        uptime_log.readlines()

    return uptime_log


def write_uptime(date, uptime, logs=None):
    with open(PATH_TO_LOGS, "a") as uptime_log:
        uptime_log.write(date + " ----- " + uptime + '\n')


if __name__ == "__main__":
    uptime = get_uptime()
    date = time.ctime()

    write_uptime(date, uptime)
