'use strict';

var expect = require('chai').expect;

var lambdaFunc = require('../index');

describe('lambdaFunc', function () {

    [
        "AWS",
        "Lambda"

    ].forEach(function (validName) {

        it(`successful invocation: name=${validName}`, function (done) {

            var context = {

                succeed: function (result) {

                    expect(result.valid).to.be.true;
                    done();
                },

                fail: function () {

                    done(new Error('never context.fail'));
                }
            }

            myLambda.handler({ name: validName }, { /* context */ }, (err, result) => {

                try {

                    expect(err).to.not.exist;

                    expect(result).to.exist;
                    expect(result.valid).to.be.true;

                    done();
                }
                catch (error) {

                    done(error);
                }
            });
        });
    });

    [
        "Other",
        undefined

    ].forEach(function (invalidName) {

        it(`fail: when name is invalid: name=${invalidName}`, function (done) {

            myLambda.handler({ name: invalidName }, { /* context */ }, (err, result) => {

                try {

                    expect(err).to.exist;
                    expect(err.message).to.equal('Unknow Name');

                    expect(result).to.not.exist;

                    done();
                }
                catch (error) {

                    done(eror);
                }
            });
        });
    });
});