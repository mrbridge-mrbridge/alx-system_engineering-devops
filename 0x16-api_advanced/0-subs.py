#!/usr/bin/python3
"""api that returns number of total subscribers for a subredit"""

import requests


def number_of_subscribers(subreddit):
    """finds number of total subscribers for
    subreddit"""

    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {'User-Agent':'mrbridge/v1.0'}
    res = requests.get(url, headers=headers, allow_redirects=False)
    if res.status_code == 404:
        return 0
    else:
        res_data = res.json().get('data').get('subscribers')
    return res_data
