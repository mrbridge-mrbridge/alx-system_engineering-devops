#!/usr/bin/python3
"""api that prints title of top ten hot posts for a subreddit"""
import requests


def recurse(subreddit, hot_list = [], after=None):
    """list of hot post title for a  subreddit"""
    url = 'https://www.reddit.com/r/{}/hot/.json'.format(subreddit)
    headers = {'User-Agent': 'mrbridge/v1.0'}
    params = {'after': after}
    res = requests.get(url, headers=headers, params=params, allow_redirects=False)
    if res.status_code == 404:
        return None
    else:
        after = res.json().get('data').get('after')
        res_data = res.json().get('data').get('children')
        for each in res_data:
            hot_list.append(each.get('data').get('title'))
        if after is not None:
            return recurse(subreddit, hot_list, after)
    return hot_list
