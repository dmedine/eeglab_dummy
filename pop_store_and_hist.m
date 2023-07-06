function [EEG, com] = pop_store_and_hist(EEG, varargin)
    com = '';
    EEG.dummy_store_and = 1234;
    com =[com 'store_and_hist'];
end