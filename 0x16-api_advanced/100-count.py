#!/usr/bin/python3
"""api that prints title of all hot posts for a subreddit"""
import requests


def count_words(subreddit, word_list, after=None):
    """list of hot post title for a  subreddit"""
    url = 'https://www.reddit.com/r/{}/hot/.json'.format(subreddit)
    head = {'User-Agent': 'mrbridge/v1.0'}
    params = {'after': after}
    res = requests.get(url, headers=head, params=params, allow_redirects=False)
    if res.status_code != 200:
        return
    else:
        finalprint = {}
        hot_list_str = ""
        after = res.json().get('data').get('after')
        res_data = res.json().get('data').get('children')
    for each in res_data:
        title_words = each.get('data').get('title').lower().split()
        for word in word_list:
            if word.lower() in title_words:
                m = title_words.count(word.lower())
                if finalprint.get(word.lower()) is None:
                    finalprint[word.lower()] = m
                else:
                    finalprint[word.lower()] += m
    if after is None:
        finalprint = sorted(finalprint.items(), key=lambda kv: (-kv[1], kv[0]))
        for k, v in finalprint:
            print('{}: {}'.format(k, v))
    else:
        count_words(subreddit, word_list, after)
