function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

% Keep track of the minimum distance in order to find which index provides
% the closest centroid.
minSoFar = 0;
index = 0;
for i = 1:size(X,1)
    currX = X(i,:);
    for j = 1:K
        centroid = centroids(j,:);
        distance = norm(currX - centroid);
        if (j == 1)
            minSoFar = distance;
            index = 1;
        else
            if (minSoFar > distance)
                minSoFar = distance;
                index = j;
            end
        end
    end
    idx(i) = index;
end

% =============================================================

end

