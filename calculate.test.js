const calculate = require('./calculate')

test('test the calculate/sum function', () => {
    expect(calculate.sum(1000,5000)).toBe(6000);
});