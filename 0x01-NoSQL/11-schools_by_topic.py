#!/usr/bin/python3
"""
function returns the list of school having a specific topic
"""


def schools_by_topic(mongo_collection, topic):
    """returns the list of school having a specific topic"""
    schools = mongo_collection.find({"topics": topic})
    return [school for school in schools]
