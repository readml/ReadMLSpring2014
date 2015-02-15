README for intro to linear regression, gradient descent and ridge regression.

Work through the items in roughly this order:

Regression_Wrapper
splitTrainTest
doLinearRegression
compute_linear_cost
visualize_sample_significance
doRidgeRegression
compute_ridge_cost
CompareLin_and_Ridge

Use swedish_insurance first, then the crime dataset.
Datasets source:
http://college.cengage.com/mathematics/brase/understandable_statistics/7e/students/datasets/mlr/frames/frame.html

Remember to adjust the learning rate if it looks like the weights are diverging.

During the presentation, the learning rates for linear and regularized regression were different, which explains the behavior.  The learning rate in the ridge regression module was too large for the data, so it diverged.  
No guarantees that the regularization is necessary for these sets.  The purpose was to introduce the concept, which is much more important in more complicated algorithms, or even linear models of higher-order polynomials.

Email michael.bocamazo@students.olin.edu with any questions about this code.

Reference material relevant to these topics can be found at:
https://class.coursera.org/ml-005/lecture/preview