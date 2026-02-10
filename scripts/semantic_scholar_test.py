#!/usr/bin/env python3
"""
Simple script to make an unauthenticated request to the Semantic Scholar API.
Uses only standard library modules.
"""

import urllib.request
import urllib.parse
import json

# Semantic Scholar API base URL
BASE_URL = "https://api.semanticscholar.org/graph/v1"

def search_papers(query, limit=5):
    """Search for papers by query string."""
    params = urllib.parse.urlencode({
        "query": query,
        "limit": limit,
        "fields": "title,authors,year,abstract,citationCount"
    })
    url = f"{BASE_URL}/paper/search?{params}"

    req = urllib.request.Request(url)
    req.add_header("User-Agent", "Python/SemanticScholarTest")

    try:
        with urllib.request.urlopen(req) as response:
            print(f"Status Code: {response.status}")
            print(f"Headers: {dict(response.headers)}\n")
            data = response.read().decode("utf-8")
            return json.loads(data)
    except urllib.error.HTTPError as e:
        print(f"HTTP Error: {e.code}")
        print(f"Response: {e.read().decode('utf-8')}")
        return None
    except urllib.error.URLError as e:
        print(f"URL Error: {e.reason}")
        return None

def get_paper(paper_id):
    """Get details for a specific paper by ID."""
    params = urllib.parse.urlencode({
        "fields": "title,authors,year,abstract,citationCount,references"
    })
    url = f"{BASE_URL}/paper/{paper_id}?{params}"

    req = urllib.request.Request(url)
    req.add_header("User-Agent", "Python/SemanticScholarTest")

    try:
        with urllib.request.urlopen(req) as response:
            print(f"Status Code: {response.status}")
            data = response.read().decode("utf-8")
            return json.loads(data)
    except urllib.error.HTTPError as e:
        print(f"HTTP Error: {e.code}")
        print(f"Response: {e.read().decode('utf-8')}")
        return None

if __name__ == "__main__":
    # Test search - looking for papers on self-organization and agency
    print("=" * 60)
    print("Searching for: 'self-organization agency systems'")
    print("=" * 60)

    results = search_papers("self-organization agency systems")

    if results and "data" in results:
        print(f"\nFound {len(results['data'])} papers:\n")
        for i, paper in enumerate(results["data"], 1):
            print(f"{i}. {paper.get('title', 'No title')}")
            print(f"   Year: {paper.get('year', 'N/A')}")
            print(f"   Citations: {paper.get('citationCount', 'N/A')}")
            authors = paper.get('authors', [])
            if authors:
                author_names = [a.get('name', '') for a in authors[:3]]
                print(f"   Authors: {', '.join(author_names)}")
            print()
    else:
        print("No results or error occurred")

    print("\n" + "=" * 60)
    print("Raw JSON response:")
    print("=" * 60)
    print(json.dumps(results, indent=2))
