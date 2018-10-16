## StatGenet class Math exam

**Read the review https://www.nature.com/articles/s41698-017-0029-7 .**

**Is there any improvement in your skills to grab the content of the review?**

**If any, describe what they are and how they worked?**

**If no,  describe how the lectures should be improved.**

---

*Basics of Graph theory*

A graph is a pair of a node(s) and edge(s). In the network-based analysis of molecular biology, many networks can represent with a graph, and nodes and edges have particular meanings in these graphs. For example, protein-protein interaction network consists of proteins as nodes and physical contacts or predicted protein-protein bindings as edges. Each network which is represented by a graph should have different properties to show their systems, so a graph can show characteristics of nodes and edges with direction, weight, or graph structure (e.g. tree, directed acyclic graph). 



*Laplacian matrix (graph Laplacian)*

A graph has some matrix which represents characteristics of the graph. The Laplacian matrix is one of the graph matrix which is calculated by $D(G) - A(G)$, where $D(G)$ is a diagonal matrix and each elements is degrees of the nodes and $A(G)$ is the adjacency matrix of the graph which is symmetric matrix in an undirected graph. In this paper, normalized symmetric Laplacian which calculated by $I-D^{-\frac{1}{2}}AD^{-\frac{1}{2}}$ is used somehow regularizing factor to reveal the similalities between genes or genomic features.



In this review, details of described methods for network-based analysis are too difficult to completely understand. I assume that the reason why I can't understand is that the network-based analysis is based on a combination of the graph theory and the machine learning (regression, classification, prediction) and I'm not familiar with each. However, because my research theme is associated with the network of genes or molecules in cancer, I would like to be able to use, if possible with understanding, these methods of the network-based analysis. So, I should understand what should I reveal and what can each method reveal.



**See a paper ["Dimension reduction techniques for the integrative analysis of multi-omics data"](https://academic.oup.com/bib/article/17/4/628/2240645) .**

**Identify the three terms "rank", "trace", and "eigenvalues" in the paper. Select one of three terms and describe how the term of your selection is being used to describe the method(s) for the omics data analysis.** 

---



*Eigenvalues*

Eigenvalue decomposition is expressed by $M = VSV^{-1}$, where $M$ is a $n\times n$ squared matrix, columns of $V$ are $n$ eigenvectors of $M$, and $S$ is a diagonal matrix whose diagonal elements are eigenvalues. Eigenvalue is a degree of magnification or contraction with linear transformation of matrix.

Principal component analysis (PCA) is one method for transformation of variables. When we assume a dataset $\boldsymbol{X}=(\boldsymbol{x}_1,\cdots,\boldsymbol{x}_p)$ which consists of $n$ samples and $p$ variables, we can make linear transformation $\boldsymbol{X}$ to $\boldsymbol{f}=\boldsymbol{Xq}$, where $\boldsymbol{q}$ is a vector of coefficients. PCA has constraints that linear transformation should be orthogonal and  the largest variance after transformation should be maximized. To maximize the variance, we calculate covariance matrix $\boldsymbol{\Sigma}$ of $\boldsymbol{X}$, then we eigenvalue decompose $\boldsymbol{\Sigma}$ to $\boldsymbol{VSV^{-1}}$. The largest eigenvalue in $\boldsymbol{S}=\text{diag}(\lambda_1,\cdots,\lambda_p)$ is the maximized variance of $\boldsymbol{f}$.

In this paper, PCA is computed by singular value decomposition (SVD) which decompose  $\boldsymbol{X}=\boldsymbol{U\Lambda Q}^T$, if  $\boldsymbol{\bar{x}}_1,\cdots,\boldsymbol{\bar{x}}_p=0$ or we create a new matrix $\boldsymbol{\bar{X}}=(\boldsymbol{\bar{x}}_1,\cdots,\boldsymbol{\bar{x}}_p)$, singular value matrix $\boldsymbol{\Lambda}=\text{diag}(\frac{1}{n-1}(\sqrt{\lambda_1},\cdots,\sqrt{\lambda_p})$. So, the largest sigular value is related with the maximize variance of $\boldsymbol{f}$.

MCIA, multiple co-inertia analysis, was shown as a method for the global measure for the co-variability of multiple data sets. In this analysis, the engenvalues is use for the explanation of the global score in total data sets.



I can't understand the trace and the rank in the context of omics data analysis. In this paper, I assume that the trace and the rank was less mentioned.



I can't understand "inertia", especially matrix $\boldsymbol{L}$ deal with a metric. I assume that this is something to define the distance in this space, but I can't understand what does mean.