# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

Reasons to adopt this approach include the simplicity of implementation and improved scalability, as the data is distributed evenly across the boats, preventing any single boat from being overwhelmed. Additionally, random partitioning can improve fault tolerance since the loss of one boat does not necessarily result in the loss of all related observations.

However, random partitioning increases the complexity of retrieving related data, as observations that belong to the same context or dataset may be stored on different boats. This can lead to higher communication overhead and longer retrieval times, especially if data consistency across boats is critical.

## Partitioning by Hour

Partitioning data by time of day simplifies data retrieval for time-based queries, as observations are guaranteed to be stored on specific boats based on their timestamps. This method also reduces the communication overhead between boats when analyzing time-specific data and provides a logical structure for organizing the observations.

However, this approach may lead to uneven load distribution if observations are not evenly distributed across the time intervals. For example, if more observations occur during the day (e.g., 8 AM to 4 PM), Boat B might become overwhelmed, while Boats A and C remain underutilized. Additionally, if a boat fails, recovering the data for its specific time interval could be more challenging.

## Partitioning by Hash Value

Partitioning by hash value ensures an even distribution of observations across the boats, minimizing the risk of any single boat becoming overwhelmed. This approach also avoids biases caused by time-based patterns and ensures scalability, as new boats can be added by adjusting the hash function's range.

However, partitioning by hash value can make retrieval of related data more complex, especially if queries involve observations grouped by time or other logical relationships. Additionally, if a boat fails, redistributing its data is challenging since the hash function does not inherently map observations in a human-readable way.
