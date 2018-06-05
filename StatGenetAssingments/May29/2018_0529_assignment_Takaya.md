## 2018-0529 Assignment



### Graph theory and analysis of biological data in computational biology



#### Definitions and mathematical preliminaries

- Graph $G$ consists of a set of vertices $V(G)$ and edges $E(G)$.

- $N(v_i)$: a set of vertices adjacent to a vertex $v_i$

- $d(v_i)$: the degree of a vertex $v_i$

- $G_1 \cong G_2$: one-to-one transformation of $V_1$ onto $V_2$ and $E_1$ ont $E_2$

- A supergraph $G$ has a subgraph $G'$: $V(G') \subseteq V(G)$ and $E(G') \subseteq E(G)$

- A line graph $L(G)$: each vertex in $L(G)$ indicates an edge, any pairs of vertices of $L(G)$ are adjacent if and if only their corresponding edges share a common endpoint

- Undirected and directed: whether there is distinction between the two vertices associated with each edge

- Node-degree: $d(u)$ is the total number of edges at node $u$ in an undirected graph. In a directed graph, in-degree $d^+(u)$ is the number of edges that start from $u$ and out-degree $d^-(u)$ is the number of edges that terminat at $u$.

- The adjacency matrix $A$ is given 

  $$a_{ij}=\begin{cases}1\ \ \text{if}\ v_iv_j \in E(G) \\ 0\ \ \text{if}\ v_iv_j \notin E(G)\end{cases}$$

- Path: a sequence of vertices $u=v_1,v_2,...,v_k=v$

  Path length: shortedt path from $u$ to $v$ (in this case, length is $k-1$)



#### Modeling of bio-molecular networks

- Transcriptional regulatory networks

  The regulatory interactions between genes. Nodes correspond to individual genes. When gene A positively or negatively regulates gene B, a directed edge is drawn from gene A to gene B.

- Protein interaction network

  Nodes correspond to proteins and edges correspond to protein-protein interactions in an undirected graph.

- Metabolic network

  The bio-chemical interactions within a cell; substrates are transformed into products through reactions catalysed by enzymes. Metabolic networks are complex due to many kinds of nodes (proteins, prticles, molecules) and many connections in their networks, networks require more complex graphs such as hyper-graphs, wighted bipartite graph.



#### Measurement of centrality and importance in bio-molecular networks

- Elucidating the contribution of each molecule to a particular funcion is too difficult because biological function is an extremely complicated consequence of the action of a large number of different molecules that in many different ways.
- The recognition of modules, a functional unit of the interaction of molecule introduces a critical level of biological organization thar enable insilico studies. 



#### Identifying motifs or functional modules in biological networks

- Biological networks and engineered networks are seen to share structural principles such as modularity and recurrence of circuit elements.

- Various basic functional modules are reused in engineering and biological systems, with a small set of recurring circuit elements, called motifs which are small sub-graph and occur significantly more frequently in real networks.

  

#### Mining novel pathways from bio-molecular networks

- There is a need for comparative genomics tools that help scientists predict pathways in  an organism's biological network.
- The goal of most pathway inference methods has generally been to match putatibely identified enzymes with known or regerence pathways.

