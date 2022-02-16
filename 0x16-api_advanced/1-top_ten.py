#!/usr/bin/python3
"""api that returns number of total subscribers for a subreddit"""
import requests


def top_ten(subreddit):
    """finds number of total subscribers for subreddit"""
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    headers = {'User-Agent':'mrbridge/v1.0'}
    res = requests.get(url, headers=headers, allow_redirects=False)
    if res.status_code == 404:
        print('None')
        return
    else:
        res_data = res.json().get('data').get('subscribers')
    return res_data
