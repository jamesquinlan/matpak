function [ A ] = mkrso(n)
%MKRSO returns a random Row Sum One (RSO) matrix
%   Make a RSO

A = rand(n);
rowsum = sum(A,2);
A = bsxfun(@rdivide, A, rowsum);

end

