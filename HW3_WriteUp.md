# # CSE 166: Image Processing, Fall 2016 Assignment 3

###Problem 4.1
**Repeat Example 4.1, but using the function for f(t) = A for $0 \leq t \leq w$ and and f(t) = 0 for all other values of t. Explain the reason for any differences between your results and the results in the example.**




\\[
    F(\mu) = \int_{\infty}^{-\infty} f(t)e^{-j2\pi\mu t} dt
    \\= \int_{0}^{W} Ae^{-j2\pi\mu t} dt
    \\= \frac{-A}{2\pi\mu j} * e^{-j2\pi\mu t} \Big|_0^W \
    \\= \frac{-A}{2\pi\mu j} * [e^{-j2\pi\mu W}- 1]
    \\= \frac{-A}{2\pi\mu j} * [e^{-j\pi\mu W} + e^{-j\pi\mu W}] * e^{-j\pi\mu W}
    \\= \frac{A}{\pi\mu} * sin(\pi \mu t)
    \\= AW\frac{sin(\pi \mu t)}{\pi \mu t} * e^{-j\pi\mu W}
\\]

If we compare the above result with the result in example 4.1, we can find that they are very similar except here we have a extra phase term. The phase only represents how much the function is shifted. The magnitude of the function are the same in both cases



