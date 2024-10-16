#  ManualCustomView

Am not too familiar with doing constraints by text (as opposed to IB)

In preparation for doing similar things with CollectionView cells I dabbled around with this project. 

A couple of things that I struggled with:

- Have to set translatesAutoresizingMaskIntoConstraints for all subviews to true if doing manual constraints. 
- It looks like when writing an init function for a view that does not take a CGRect frame arg, the call to superview's' init needs to pass in .zero as the frame argument, else you'll get constraint conflicts. Subviews likewise should not be initialized via an init(\_ frame ...) initializer. 
