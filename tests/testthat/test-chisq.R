context('chi2-contingency')

test_that('ouput from chisq_test matches the expected result', {
    k <- chisq_test(as.factor(hsb$female), as.factor(hsb$schtyp))
    expect_equal(k$df, 1)
    expect_equal(k$chi, 0.047)
    expect_equal(k$chilr, 0.0471)
    expect_equal(k$chimh, 0.0468)
    expect_equal(k$chiy, 0.0005)
    expect_equal(k$sig, 0.8284)
    expect_equal(k$siglr, 0.8282)
    expect_equal(k$sigmh, 0.8287)
    expect_equal(k$sigy, 0.9822)
    expect_equal(k$phi, 0.0153)
    expect_equal(k$cc, 0.0153)
    expect_equal(k$cv, 0.0153)
    expect_equal(k$ds, 4)
})

test_that('ouput from chisq_test matches the expected result', {
    k <- chisq_test(as.factor(hsb$female), as.factor(hsb$ses))
    expect_equal(k$df, 2)
    expect_equal(k$chi, 4.5765)
    expect_equal(k$chilr, 4.6789)
    expect_equal(k$sig, 0.1014)
    expect_equal(k$siglr, 0.0964)
    expect_equal(k$phi, 0.1513)
    expect_equal(k$cc, 0.1496)
    expect_equal(k$cv, 0.1513)
    expect_equal(k$ds, 6)
})

test_that('chisq_test throws the appropriate error', {
    expect_error(chisq_test(as.factor(hsb$female), hsb$ses), 'y must be a categorical variable')
    expect_error(chisq_test(hsb$female, as.factor(hsb$ses)), 'x must be a categorical variable')
})
