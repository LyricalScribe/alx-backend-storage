#!/usr/bin/python3
"""Function that lists all documents in a collection"""


def list_all(mongo_collection):
    """lists all documents in a collectio"""
    document = []
    for doc in mongo_collection.find():
        document.append(doc)

        return document
