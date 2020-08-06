import logging.config
import os
import shutil
import sys
from logging import DEBUG, INFO, getLogger
from pathlib import Path

import const as c

# ロガー設定
logging.basicConfig(
    level=logging.DEBUG,
    format='%(asctime)s.%(msecs)03d %(levelname)-8s %(module)-18s %(funcName)-10s %(lineno)4s: %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S'
)
log = getLogger(__name__)
log.setLevel(INFO)


def main(target: str) -> None:

    path = c.COMIC_ROOT + target
    p = Path(path)
    if not p.exists() or not p.is_dir():
        raise ValueError("target is invalid: %s", target)

    log.info("target path: %s", target)
    for volume in p.iterdir():
        if volume.is_file():
            log.error("file found. skip: %s", str(volume))

        elif volume.is_dir():
            if (p / (str(volume) + '.zip')).exists():
                log.info("zipfile found. skip: %s", str(volume))
                continue
            log.info("zip: root=%s, base=%s", str(path), str(volume.name))
            shutil.make_archive(str(volume), 'zip',
                                root_dir=str(path),
                                base_dir=str(volume.name))

        else:
            raise Exception("unexpected error occurs: %s", str(volume))


if __name__ == "__main__":
    args = sys.argv
    log.info(args)
    main(args[1])
