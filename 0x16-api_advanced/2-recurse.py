#!/usr/bin/python3
"""api that prints title of top ten hot posts for a subreddit"""
import requests


def recurse(subreddit):
    """finds number of total subscribers for subreddit"""
    url = 'https://www.reddit.com/r/{}/hot/.json'.format(subreddit)
    headers = {'User-Agent': 'mrbridge/v1.0'}
    res = requests.get(url, headers=headers, allow_redirects=False)
    if res.status_code == 404:
        return None
    else:
        hot_list = []
        res_data = res.json().get('data').get('children')
        for each in res_data:
            title_list.append(each.get('data').get('title'))
    return hot_list
