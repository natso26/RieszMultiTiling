# RieszMultiTiling

MATLAB code for the paper https://arxiv.org/abs/1904.04487.

## Usage

Use to compute tightness quantities `L`, `U`, `cond`, and `D`.

*Remark*: `cond` is deprecated and replaced by `rho = cond^2` in the paper.

For pairs `(E, B)`, the entry point is `mainPair.m`. For sets `E`, the entry point `mainSet.m`.
