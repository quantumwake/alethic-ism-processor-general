import asyncio
import signal
import sys


RUNNING = True


def graceful_shutdown(signum, frame):
    global RUNNING
    print("Received SIGTERM signal. Gracefully shutting down.")
    RUNNING = False
    sys.exit(0)


# Attach the SIGTERM signal handler
signal.signal(signal.SIGTERM, graceful_shutdown)

if __name__ == '__main__':
    print("hello world and good bye world")

    # asyncio.run(qa_topic_consumer())
