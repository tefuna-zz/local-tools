import logging.config
import os
import sys
from logging import DEBUG, INFO, getLogger

import const

# ロガー設定
logging.basicConfig(
    level=logging.DEBUG,
    format='%(asctime)s.%(msecs)-3d %(levelname)-8s %(module)-18s %(funcName)-10s %(lineno)4s: %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S'
)
log = getLogger(__name__)
log.setLevel(INFO)


# グローバル
mailpath = os.path.dirname(__file__) + "/" + const.GIFT_MAIL
urlspath = os.path.dirname(__file__) + "/" + const.GIFT_URLS


def main() -> None:
    """メイン関数。

    tmp/giftmail.tmpを配置すること。
    """

    # nanacoギフトメール読み込み
    urls = read_giftmail()
    log.info("GIFT COUNT: %s", len(urls))
    log.info("GIFT URLS: %s", urls)

    # ギフトURL書き込み
    write_gifturls(urls)


def read_giftmail() -> list:
    """nanacoギフトメールを読み込み、URLリストを返却する。

    Returns:
        list: nanacoギフトURL
    """

    urls = []   # ギフトURLリスト

    # nanacoギフトメールを読み込む。
    with open(mailpath, 'r', encoding='utf-8') as f:
        lines = f.readlines()
        for line in lines:
            if line.startswith(const.PREFIX_GIFT):
                url = line[line.find(const.PREFIX_URL):].strip()
                urls.append(url)

    return urls


def write_gifturls(urls: list) -> None:
    """ギフトURLをファイル出力する。

    Args:
        urls (list): nanacoギフトURLリスト
    """
    # ギフトURLをファイル出力する。
    urls_lf = [url+'\n' for url in urls]
    with open(urlspath, 'wt', encoding='utf-8') as f:
        f.writelines(urls_lf)


if __name__ == "__main__":
    main()
