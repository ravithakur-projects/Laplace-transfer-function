clear all
close all
clc

% Method-01
% Defining numerator and denumerator of the transfer function.
num = [2 1];
den = [4 3 2];

% Defining transfer function using 'tf' under variable 'T'.
T = tf(num,den)

% Converting Transfer function into State space using 'tf2ss'
[A,B,C,D] = tf2ss([num],[den])

% Method-02
% Assigning numerator and denumerator of the transfer function directly
% using 'tf' under variable 'Z'.
Z = tf([2,1],[4,3,2])

% Converting Transfer function into State space using 'tf2ss'
[A,B,C,D] = tf2ss([2,1],[4,3,2])

% Converting Stste space into Transfer function and storing the converted data under variable 'H'.
A = [-0.75 -0.50; 1.00 0];
B = [1; 0];
C = [0.50 0.25];
D = [0];

[num,den] = ss2tf(A,B,C,D,1);

H = tf(num,den)


