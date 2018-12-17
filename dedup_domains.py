import socket
import threading
import Queue
import time
import sys

def in_set(v, s):
    parts = v.split('.')
    while parts:
        if ".".join(parts) in s:
            return True
        parts=parts[1:]
    return False

with open(sys.argv[1]) as f:
    domains = []
    for l in f:
        domain = l.strip().split(' ')[0]
        if not domain or domain[0] == '#':
            continue
        domains.append(domain)
    domains.sort(key=lambda x: x.count('.'))
    domains_set = set()
    result = []
    for v in domains:
        if in_set(v, domains_set):
            continue
        domains_set.add(v)
        result.append(v)
    for v in result:
        print(v)

