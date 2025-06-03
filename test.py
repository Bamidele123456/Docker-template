import redis

# Connect to Redis server (adjust host and port if needed)
r = redis.Redis(host='localhost', port=6379)

# Set a key
r.set('mykey', 'Hello, Redis!')

# Get a key
value = r.get('mykey')
print(value.decode())  # prints: Hello, Redis!
